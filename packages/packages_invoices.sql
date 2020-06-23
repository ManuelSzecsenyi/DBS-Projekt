/**********************************************************************/
/*
/* Filename: packages_invoices.pkg
/* Package: bonus_invoices
/* Developer: Manuel Szecsenyi
/* Description: Responsible for CRU(D) actions on Invoices and their positions
/*
/**********************************************************************/


CREATE OR REPLACE PACKAGE pa_bonus_invoices AS

    PROCEDURE sp_add_invoice(
        n_customer_id_in IN NUMBER,
        n_branch_office_id_in IN NUMBER,
        n_invoice_id_out OUT NUMBER
        );

    PROCEDURE sp_update_invoice(
        n_invoice_id_in IN NUMBER,
        n_customer_id_in IN NUMBER,
        d_purchase_timestamp_in IN TIMESTAMP,
        n_branch_office_id_in IN NUMBER
    );

    PROCEDURE sp_add_article(
        n_invoice_id_in IN NUMBER,
        n_article_id_in  IN NUMBER,
        n_quantity_in  IN NUMBER
        );

    PROCEDURE sp_delete_article(
        n_invoice_id_in IN NUMBER,
        n_article_id_in  IN NUMBER
        );

    function f_get_invoices_rc RETURN SYS_REFCURSOR;

END pa_bonus_invoices;
/

CREATE OR REPLACE PACKAGE BODY pa_bonus_invoices AS


    /*********************************************************************/
    /**
    /** Procedure sp_add_invoice
    /** In: n_customer_id_in – The customer (owner) of the invoice .
    /** In: n_branch_office_id_in – The branch in which the purchase was made.
    /** Out: n_invoice_id_out – The new invoice id
    /** Developer: Manuel Szecsenyi
    /** Description: Saves an empty invoice to a customer and branch.
    /**
    /*********************************************************************/
    PROCEDURE sp_add_invoice(
        n_customer_id_in IN NUMBER,
        n_branch_office_id_in IN NUMBER,
        n_invoice_id_out OUT NUMBER
        )
    AS

    BEGIN
        INSERT INTO BONUS_INVOICES
        (INVOICE_ID, CUSTOMER_ID, SUBTOTAL_NET, PURCHASE_TIMESTAMP, BRANCH_OFFICE_ID) VALUES
        (
             BONUS_INVOICES_SEQ.nextval,
             n_customer_id_in,
             0,
             sysdate,
             n_branch_office_id_in
        );

        SELECT BONUS_INVOICES_SEQ.currval
        INTO n_invoice_id_out
        FROM DUAL;

    END;


    /*********************************************************************/
    /**
    /** Procedure sp_update_invoice
    /** In: n_invoice_id_in – The invoice of the invoice to be updated.
    /** In: n_customer_id_in – The customer id to which the invoice is saved.
    /** In: d_purchase_timestamp_in – The timestamp of the purchase.
    /** In: n_branch_office_id_in – The branch in which the purchase was made.
    /** Developer: Manuel Szecsenyi
    /** Description: Updates the invoice meta data. Invoice Id cannot be updated.
    /**
    /*********************************************************************/
    PROCEDURE sp_update_invoice(
        n_invoice_id_in IN NUMBER,
        n_customer_id_in IN NUMBER,
        d_purchase_timestamp_in IN TIMESTAMP,
        n_branch_office_id_in IN NUMBER
        )
    AS
    BEGIN
        UPDATE BONUS_INVOICES SET
        CUSTOMER_ID = n_customer_id_in,
        PURCHASE_TIMESTAMP = d_purchase_timestamp_in,
        BRANCH_OFFICE_ID = n_branch_office_id_in
        WHERE INVOICE_ID = n_invoice_id_in;

    END;


    /********************************************************************/
    /***
    /** Procedure sp_add_article
    /** In: n_invoice_id_in – The invoice id of the invoice to be updated.
    /** In: n_article_id_in – The article id which should be added to the invoice.
    /** In: n_quantity_in – The article quantity.
    /** Developer: Manuel Szecsenyi
    /** Description: Adds a new article to an invoice. The price and position is
    /**              calculated inside the prodedure.
    /**
    /*********************************************************************/
    PROCEDURE sp_add_article(
        n_invoice_id_in IN NUMBER,
        n_article_id_in  IN NUMBER,
        n_quantity_in  IN NUMBER
        )
    AS
        n_new_position NUMBER;
        n_unit_price NUMBER;
    BEGIN

        -- Save current unit price
        SELECT NET_PRICE
        INTO n_unit_price
        FROM BONUS_ARTICLES
        WHERE ARTICLE_ID = n_article_id_in;

        -- Retrieve next position on invoice
        SELECT COUNT(*) + 1
        INTO n_new_position
        FROM BONUS_POSITIONS
        WHERE INVOICE_ID = 1;

        INSERT INTO BONUS_POSITIONS
        (INVOICE_ID, ARTICLE_ID, UNIT_PRICE, QUANTITY, POSITION) VALUES
        (
            n_invoice_id_in,
            n_article_id_in,
            n_unit_price,
            n_quantity_in,
            n_new_position
        );

    END;


    /********************************************************************/
    /***
    /** Procedure sp_delete_article
    /** In: n_invoice_id_in – The invoice id of the invoice to be updated.
    /** In: n_article_id_in – The article id which should be deleted from the invoice.
    /** Developer: Manuel Szecsenyi
    /** Description: Removes an item of an invoice. Position of each each product
    /**              ist recalculated inside the prodedure.
    /**
    /*********************************************************************/
    PROCEDURE sp_delete_article(
        n_invoice_id_in IN NUMBER,
        n_article_id_in  IN NUMBER
        )
    AS
        CURSOR c_positions
        IS
            SELECT *
            FROM BONUS_POSITIONS
            WHERE INVOICE_ID = n_invoice_id_in
            ORDER BY POSITION;

        l_position_row BONUS_POSITIONS%ROWTYPE;
        n_counter NUMBER := 0;
    BEGIN

        -- Delete the old value
        DELETE FROM BONUS_POSITIONS
        WHERE INVOICE_ID = n_invoice_id_in
          AND ARTICLE_ID = n_article_id_in;

        -- Update the position of the other articles
        open c_positions;
        LOOP

            FETCH c_positions INTO l_position_row;
            EXIT WHEN c_positions%NOTFOUND;

            n_counter := n_counter + 1;

            UPDATE BONUS_POSITIONS
            SET POSITION = n_counter
            WHERE INVOICE_ID = l_position_row.INVOICE_ID
              AND ARTICLE_ID = l_position_row.ARTICLE_ID;

        end loop;
        CLOSE c_positions;

    END;

    /*********************************************************************/
    /**
    /** Function: f_get_invoices_rc
    /** Returns: rc_cursor_out - All available invoices
    /** Developer: Manuel Szecsenyi
    /** Description: Returns a table of all customers.
    /**
    /*********************************************************************/
    function f_get_invoices_rc RETURN SYS_REFCURSOR
	as
        rc_cursor_out SYS_REFCURSOR;
		begin

            OPEN rc_cursor_out
                FOR SELECT *
                FROM BONUS_INVOICES;

            RETURN rc_cursor_out;

		end;


    
END pa_bonus_invoices;
/