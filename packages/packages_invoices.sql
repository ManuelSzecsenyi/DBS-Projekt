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
    
END pa_bonus_invoices;
/
