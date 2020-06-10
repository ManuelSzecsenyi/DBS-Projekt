/*********************************************************************/
/**
/** Table: bonus_costumers
/** Developer: Manuel Szecsenyi
/** Description: Create table bonus_customers
/**
/*********************************************************************/
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
);

