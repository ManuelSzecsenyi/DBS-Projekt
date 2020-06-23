/**********************************************************************/
/*
/* Filename: packages_invoices.pkg
/* Package: bonus_invoices
/* Developer: Manuel Szecsenyi
/* Description: Responsible for CRU(D) actions on Invoices and their positions
/*
/**********************************************************************/


CREATE OR REPLACE PACKAGE pa_bonus_invoices AS

    PROCEDURE add_invoice(
        n_customer_id_in IN NUMBER,
        n_branch_office_id_in IN NUMBER
        );



END pa_bonus_invoices;
/

CREATE OR REPLACE PACKAGE BODY pa_bonus_invoices AS


    /*********************************************************************/
    /**
    /** Procedure sp_add_customer
    /** In: v_name_in – The first name of the customer to insert.
    /** In: v_surname_in – The last name of the customer to insert.
    /** In: v_phone_number – The phone number of the customer to insert.
    /** In: d_date_of_birth_in – The date of birth of the customer to insert. (YYYY-MM-DD)
    /** In: v_email_in – The email address of the customer to insert.
    /** In: n_card_no_in – The card number of the customer to insert. Usually 1
    /** Developer: Manuel Szecsenyi
    /** Description: This procedures creates a new customer in the database.
    /**              Used to demonstrate PL/SQL with the GUI.
    /**
    /*********************************************************************/
    PROCEDURE add_invoice(
        n_customer_id_in IN NUMBER,
        n_branch_office_id_in IN NUMBER
        )
    AS
        n_invoice_id_out NUMBER;
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

        n_invoice_id_out := BONUS_INVOICES_SEQ.currval;

        return n_invoice_id_out;

    END;
    
END pa_bonus_invoices;
/
