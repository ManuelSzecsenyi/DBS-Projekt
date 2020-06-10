/*********************************************************************/
/**
/** Table: bonus_invoices
/** Developer: Manuel Szecsenyi
/** Description: Create table bonus_invoices
/**
/*********************************************************************/

CREATE TABLE bonus_invoices
(
    INVOICE_ID NUMBER,
	CUSTOMER_ID NUMBER,
	total_netto NUMBER,
	time TIMESTAMP,
	BRANCH_ID NUMBER,

    PRIMARY KEY (INVOICE_ID),
    FOREIGN KEY (CUSTOMER_ID) REFERENCES BONUS_CUSTOMERS(CUSTOMER_ID)
);

ALTER TABLE BONUS_INVOICES MODIFY (INVOICE_ID NOT NULL ENABLE);
ALTER TABLE BONUS_INVOICES MODIFY (total_netto NOT NULL ENABLE);
ALTER TABLE BONUS_INVOICES MODIFY (time NOT NULL ENABLE);

