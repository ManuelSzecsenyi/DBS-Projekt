
/*********************************************************************
/** Table: bonus_customers, bonus_invoices
/** Developer: Kurosh Mehdipour
/** Description: Creating View customer_statistic
/**
/*********************************************************************/
CREATE OR REPLACE View bonus_customer_statistic as
    SELECT BONUS_CUSTOMERS.CUSTOMER_ID as Customer_ID,
        name AS Name,
        surname AS Surname,
        card_no AS Card_Number,
        COALESCE(Sum(SUBTOTAL_NET), 0) AS SUBTOTAL_NET,
        Count(INVOICE_ID) AS Number_of_Invoices
    FROM BONUS_INVOICES
    RIGHT JOIN BONUS_CUSTOMERS ON BONUS_INVOICES.CUSTOMER_ID = BONUS_CUSTOMERS.CUSTOMER_ID
    GROUP BY BONUS_INVOICES.CUSTOMER_ID, BONUS_CUSTOMERS.CUSTOMER_ID, name, surname, card_no
    ORDER BY Customer_ID;
