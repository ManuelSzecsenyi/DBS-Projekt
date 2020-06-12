/**********************************************************************/
/*
/* Filename: packages_customers.pkg
/* Package: bonus_customers
/* Developer: Manuel Szecsenyi
/* Description: Responsible for adding a customer and getting their turnover
/*
/**********************************************************************/

CREATE OR REPLACE PACKAGE bonus_customers_pkg AS

    procedure add_customer(v_name_in IN VARCHAR,
                           v_surname_in IN VARCHAR,
                           v_phone_number IN VARCHAR,
                           d_date_of_birth_in DATE,
                           v_email_in VARCHAR,
                           n_card_no_in Number);

    function get_customer_turnover(n_CUSTOMER_ID_in IN NUMBER) RETURN NUMBER;

END bonus_customers_pkg;
/

CREATE OR REPLACE PACKAGE BODY bonus_customers_pkg AS

    procedure add_customer(v_name_in IN VARCHAR,
                           v_surname_in IN VARCHAR,
                           v_phone_number IN VARCHAR,
                           d_date_of_birth_in DATE,
                           v_email_in VARCHAR,
                           n_card_no_in Number)
    AS

    BEGIN

        INSERT INTO BONUS_CUSTOMERS
        (CUSTOMER_ID, NAME, SURNAME, PHONE_NUMBER, DATE_OF_BIRTH, DATE_OF_SIGNUP, EMAIL, CARD_NO)
        VALUES
        (
         BONUS_CUSTOMERS_SEQ.nextval,
         v_name_in,
         v_surname_in,
         v_phone_number,
         d_date_of_birth_in,
         SYSDATE,
         v_email_in,
         n_card_no_in
        );

    END;

    function get_customer_turnover(n_CUSTOMER_ID_in IN NUMBER) RETURN NUMBER
	as
        n_turnover_out NUMBER;
		begin

		    SELECT SUM(SUBTOTAL_NET)
		    INTO n_turnover_out
            FROM BONUS_CUSTOMERS
            JOIN BONUS_INVOICES BI on BONUS_CUSTOMERS.CUSTOMER_ID = BI.COSTUMER_ID
            WHERE CUSTOMER_ID = n_CUSTOMER_ID_in
		    GROUP BY CUSTOMER_ID;

		    return n_turnover_out;

		    -- return -1 if no customer is found
		    EXCEPTION WHEN NO_DATA_FOUND THEN
		        DBMS_OUTPUT.PUT_LINE('No customer found');
		        return -1;

		end;

END bonus_customers_pkg;
/