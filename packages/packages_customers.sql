/**********************************************************************/
/*
/* Filename: packages_customers.pkg
/* Package: bonus_customers
/* Developer: Manuel Szecsenyi
/* Description: Responsible for adding a customer and getting the turnover
/*
/**********************************************************************/

CREATE OR REPLACE PACKAGE bonus_customers_pkg AS

    procedure add_customer(v_name_in IN VARCHAR,
                           v_surname_in IN VARCHAR,
                           v_phone_number IN VARCHAR,
                           d_date_of_birth_in DATE,
                           v_email_in VARCHAR,
                           n_card_no_in Number,
                           n_customer_no_in Number);

    function get_customer_turnover(n_CUSTOMER_ID_in NUMBER) RETURN NUMBER;

END bonus_customers_pkg;
/

CREATE OR REPLACE PACKAGE BODY bonus_customers_pkg AS

    procedure add_customer(v_name_in IN VARCHAR,
                           v_surname_in IN VARCHAR,
                           v_phone_number IN VARCHAR,
                           d_date_of_birth_in DATE,
                           v_email_in VARCHAR,
                           n_card_no_in Number,
                           n_customer_no_in Number)
    AS

    BEGIN

        INSERT INTO BONUS_CUSTOMERS
        (CUSTOMER_ID, NAME, SURNAME, PHONE_NUMBER, DATE_OF_BIRTH, DATE_OF_SIGNUP, EMAIL, CARD_NO, CUSTOMER_NO)
        VALUES
        (
         BONUS_CUSTOMERS_SEQ.nextval,
         v_name_in,
         v_surname_in,
         v_phone_number,
         d_date_of_birth_in,
         CURRENT_DATE,
         v_email_in,
         n_card_no_in,
         n_customer_no_in
        );

    END;

    function get_customer_turnover (gebdate in date default sysdate) return integer
	as
        n_turnover_out NUMBER;
		begin

		    -- TODO
		    n_turnover_out := 8012;

		    return n_turnover_out;

		end;

END bonus_customers_pkg;
/

BEGIN
    bonus_customers_pkg.add_customer(
        'Manuel',
        'Szecsenyi',
        '+4369911114448',
        '16.11.1997',
        'manuel@example.org',
        1,
        54948916
        );
end;

SELECT * FROM BONUS_CUSTOMERS;