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
