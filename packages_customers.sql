/**********************************************************************/
/*
/* Filename: packages_customers.pkg
/* Package: bonus_customers
/* Developer: Manuel Szecsenyi
/* Description: Responsible for adding a customer and getting the turnover
/*
/**********************************************************************/

CREATE TABLE bonus_customers
(
    CUSTOMER_ID NUMBER PRIMARY KEY,
    name VARCHAR2(30),
    surname VARCHAR2(30),
    phone_number VARCHAR(20),
    date_of_birth DATE,
    date_of_signup DATE,
    email VARCHAR2(50),
    card_no Number,
    customer_no Number
) ;


CREATE OR REPLACE PACKAGE bonus_customers AS


    procedure add_customer(
        v_name_in IN VARCHAR(30),
        v_surname_in IN VARCHAR(30),
        v_
        );

END bonus_customers;
/

CREATE OR REPLACE PACKAGE BODY bonus_customers AS



END bonus_customers;
/

