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
	CUSTOMER_id NUMBER,
	total_netto NUMBER,
	time TIMESTAMP,
	BRANCH_ID NUMBER
);

