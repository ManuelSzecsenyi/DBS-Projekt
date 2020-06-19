/*********************************************************************/
/**
/** Trigger: tr_ar_dlu_update_subtotal
/** Type: After row
/** Type Extension: delete or insert or update
/** Developer: Manuel Szecsenyi
/** Description: Updates the subtotal of a
/**
/*********************************************************************/
CREATE TRIGGER tr_ar_dlu_update_subtotal
    AFTER DELETE OR INSERT OR UPDATE
    ON BONUS_POSITIONS FOR EACH ROW
DECLARE
    l_n_new_subtotal NUMBER;
    l_n_product_subtotal NUMBER;
    l_n_invoice_id NUMBER;
BEGIN


    IF INSERTING THEN

        l_n_product_subtotal := :new.UNIT_PRICE * :new.QUANTITY;

        UPDATE BONUS_INVOICES
        SET SUBTOTAL_NET = (
            SELECT SUBTOTAL_NET + l_n_product_subtotal
            FROM BONUS_INVOICES
            WHERE INVOICE_ID = :NEW.INVOICE_ID
        ) WHERE INVOICE_ID = :NEW.INVOICE_ID;

    ELSIF UPDATING('INVOICE_ID') THEN

        -- update old table (1/2)
        l_n_product_subtotal := :old.UNIT_PRICE * :old.QUANTITY;

        -- update old table (2/2)
        UPDATE BONUS_INVOICES
        SET SUBTOTAL_NET = (
            SELECT SUBTOTAL_NET - l_n_product_subtotal
            FROM BONUS_INVOICES
            WHERE INVOICE_ID = :old.INVOICE_ID
        ) WHERE INVOICE_ID = :old.INVOICE_ID;


        -- update new table (1/2)
        l_n_product_subtotal := :new.UNIT_PRICE * :new.QUANTITY;

        -- update new table (2/2)
        UPDATE BONUS_INVOICES
        SET SUBTOTAL_NET = (
            SELECT SUBTOTAL_NET + l_n_product_subtotal
            FROM BONUS_INVOICES
            WHERE INVOICE_ID = :new.INVOICE_ID
        ) WHERE INVOICE_ID = :new.INVOICE_ID;

    ELSIF UPDATING THEN

        -- substract old values (1/2)
        l_n_product_subtotal := :old.UNIT_PRICE * :old.QUANTITY;

        -- substract old values (2/2)
        UPDATE BONUS_INVOICES
        SET SUBTOTAL_NET = (
            SELECT SUBTOTAL_NET - l_n_product_subtotal
            FROM BONUS_INVOICES
            WHERE INVOICE_ID = :old.INVOICE_ID
        ) WHERE INVOICE_ID = :old.INVOICE_ID;


        -- add new value (1/2)
        l_n_product_subtotal := :new.UNIT_PRICE * :new.QUANTITY;

        -- add new value (2/2)
        UPDATE BONUS_INVOICES
        SET SUBTOTAL_NET = (
            SELECT SUBTOTAL_NET + l_n_product_subtotal
            FROM BONUS_INVOICES
            WHERE INVOICE_ID = :old.INVOICE_ID
        ) WHERE INVOICE_ID = :old.INVOICE_ID;

    ELSIF DELETING THEN

        -- substract old values (1/2)
        l_n_product_subtotal := :old.UNIT_PRICE * :old.QUANTITY;

        -- substract old values (2/2)
        UPDATE BONUS_INVOICES
        SET SUBTOTAL_NET = (
            SELECT SUBTOTAL_NET - l_n_product_subtotal
            FROM BONUS_INVOICES
            WHERE INVOICE_ID = :old.INVOICE_ID
        ) WHERE INVOICE_ID = :old.INVOICE_ID;

    END IF ;
END;