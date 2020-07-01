/*********************************************************************/
/**
/** Table: bonus_costumers
/** Developer: Kurosh Mehdipour
/** Description: Create table bonus_customers
/**
/*********************************************************************/

  CREATE TABLE bonus_customers
(
    CUSTOMER_ID NUMBER,
    name VARCHAR2(30),
    surname VARCHAR2(30),
    phone_number VARCHAR(20),
    date_of_birth DATE,
    date_of_signup DATE,
    email VARCHAR2(50),
    card_no Number,

    PRIMARY KEY (CUSTOMER_ID)
);
   
/*********************************************************************/
/**
/** Table: bonus_tax_rates
/** Developer: Kurosh Mehdipour
/** Description: Create table bonus_tax_rates
/**
/*********************************************************************/

  CREATE TABLE bonus_tax_rates
   (	
    TAX_RATE_ID NUMBER,
	designation VARCHAR2(30),
	percentage Number
   );
   
/*********************************************************************/
/**
/** Table: bonus_articles
/** Developer: Kurosh Mehdipour
/** Description: Create table bonus_articles
/**
/*********************************************************************/


  CREATE TABLE bonus_articles
   (	
     ARTICLE_ID NUMBER,
	 designation VARCHAR2(30),
	 unit VARCHAR2(10),
	 net_price Number,
	 tax_rate_id NUMBER,
     sold_units NUMBER
   );
   
/*********************************************************************/
/**
/** Table: bonus_positions
/** Developer: Kurosh Mehdipour
/** Description: Create table bonus_positions
/**
/*********************************************************************/

  CREATE TABLE bonus_positions
   (	
     INVOICE_ID NUMBER,
	 ARTICLE_ID NUMBER,
	 unit_price NUMBER,
	 quantity NUMBER,
	 position NUMBER
   );

/*********************************************************************/
/**
/** Table: bonus_invoices
/** Developer: Kurosh Mehdipour
/** Description: Create table bonus_invoices
/**
/*********************************************************************/

  CREATE TABLE bonus_invoices
   (	
     INVOICE_ID NUMBER,
	 customer_id NUMBER,
	 subtotal_net NUMBER,
     purchase_timestamp TIMESTAMP,
	 branch_office_id NUMBER
   );
   
/*********************************************************************/
/**
/** Table: bonus_branch_offices
/** Developer: Kurosh Mehdipour
/** Description: Create table bonus_branch_offices
/**
/*********************************************************************/

  CREATE TABLE bonus_branch_offices
   (	
     BRANCH_OFFICE_ID NUMBER,
	 name Varchar(30),
	 adress Varchar(50),
	 postcode NUMBER
   );
   
/*********************************************************************/
/**
/** Table: bonus_postcodes
/** Developer: Kurosh Mehdipour
/** Description: Create table bonus_postcodes
/**
/*********************************************************************/

  CREATE TABLE bonus_postcodes
   (	
     PLZ NUMBER,
	 name Varchar(30)
   );


  --  Constraints for Table bonus_costumer
--------------------------------------------------------

  ALTER TABLE bonus_customers MODIFY (CUSTOMER_ID NOT NULL ENABLE);
  ALTER TABLE bonus_customers MODIFY (name NOT NULL ENABLE);
  ALTER TABLE bonus_customers MODIFY (surname NOT NULL ENABLE);
  ALTER TABLE bonus_customers MODIFY (date_of_birth NOT NULL ENABLE);
  ALTER TABLE bonus_customers MODIFY (date_of_signup NOT NULL ENABLE);
  ALTER TABLE bonus_customers MODIFY (email NOT NULL ENABLE);
  ALTER TABLE bonus_customers MODIFY (card_no NOT NULL ENABLE);
  
  
  --  Constraints for Table bonus_tax_rates
--------------------------------------------------------

  ALTER TABLE bonus_tax_rates MODIFY (TAX_RATE_ID NOT NULL ENABLE);
  ALTER TABLE bonus_tax_rates MODIFY (designation NOT NULL ENABLE);
  ALTER TABLE bonus_tax_rates MODIFY (percentage NOT NULL ENABLE);
  ALTER TABLE bonus_tax_rates ADD PRIMARY KEY (TAX_RATE_ID) ENABLE;
	
  --  Constraints for Table bonus_postcodes
--------------------------------------------------------

  ALTER TABLE bonus_postcodes MODIFY (PLZ NOT NULL ENABLE);
  ALTER TABLE bonus_postcodes MODIFY (name NOT NULL ENABLE);
  ALTER TABLE bonus_postcodes ADD PRIMARY KEY (PLZ) ENABLE;

  --  Constraints for Table bonus_articles
--------------------------------------------------------

  ALTER TABLE bonus_articles MODIFY (ARTICLE_ID NOT NULL ENABLE);
  ALTER TABLE bonus_articles MODIFY (designation NOT NULL ENABLE);
  ALTER TABLE bonus_articles MODIFY (unit NOT NULL ENABLE);
  ALTER TABLE bonus_articles MODIFY (net_price NOT NULL ENABLE);
  ALTER TABLE bonus_articles ADD PRIMARY KEY (ARTICLE_ID) ENABLE;
	
  --  Constraints for Table bonus_branch_offices
--------------------------------------------------------

  ALTER TABLE bonus_branch_offices MODIFY (BRANCH_OFFICE_ID NOT NULL ENABLE);
  ALTER TABLE bonus_branch_offices MODIFY (name NOT NULL ENABLE);
  ALTER TABLE bonus_branch_offices MODIFY (adress NOT NULL ENABLE);
  ALTER TABLE bonus_branch_offices ADD PRIMARY KEY (BRANCH_OFFICE_ID) ENABLE;
	
  --  Constraints for Table bonus_invoices
--------------------------------------------------------

  ALTER TABLE bonus_invoices MODIFY (INVOICE_ID NOT NULL ENABLE);
  ALTER TABLE bonus_invoices MODIFY (subtotal_net NOT NULL ENABLE);
  ALTER TABLE bonus_invoices MODIFY (purchase_timestamp NOT NULL ENABLE);
  ALTER TABLE bonus_invoices ADD PRIMARY KEY (INVOICE_ID) ENABLE;

  --  Constraints for Table bonus_positions
--------------------------------------------------------

  ALTER TABLE bonus_positions MODIFY (unit_price NOT NULL ENABLE);
  ALTER TABLE bonus_positions MODIFY (quantity NOT NULL ENABLE);
  ALTER TABLE bonus_positions MODIFY (position NOT NULL ENABLE);
  ALTER TABLE bonus_positions ADD PRIMARY KEY (INVOICE_ID,ARTICLE_ID) ENABLE;
	
--  Ref Constraints for Table bonus_articles
--------------------------------------------------------

  ALTER TABLE bonus_articles ADD FOREIGN KEY (tax_rate_id)
	  REFERENCES bonus_tax_rates (TAX_RATE_ID)  ENABLE;
	  
--  Ref Constraints for Table bonus_branch_offices
--------------------------------------------------------

  ALTER TABLE bonus_branch_offices ADD FOREIGN KEY (postcode)
	  REFERENCES bonus_postcodes (PLZ) ENABLE;

--  Ref Constraints for Table bonus_invoices
--------------------------------------------------------

  ALTER TABLE bonus_invoices ADD FOREIGN KEY (customer_id)
	  REFERENCES bonus_customers (CUSTOMER_ID) ENABLE;
	  
	 ALTER TABLE bonus_invoices ADD FOREIGN KEY (branch_office_id)
	  REFERENCES bonus_branch_offices (BRANCH_OFFICE_ID) ENABLE;

--  Ref Constraints for Table bonus_positions
--------------------------------------------------------

  ALTER TABLE bonus_positions ADD FOREIGN KEY (INVOICE_ID)
	  REFERENCES bonus_invoices (INVOICE_ID) ENABLE;
	
  ALTER TABLE bonus_positions ADD FOREIGN KEY (ARTICLE_ID)
	  REFERENCES bonus_articles (ARTICLE_ID) ENABLE;
	


	  
	  


	





	
	

 

   

   
