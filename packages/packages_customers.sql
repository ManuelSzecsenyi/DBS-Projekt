/**********************************************************************/
/*
/* Filename: packages_customers.pkg
/* Package: pa_bonus_customers
/* Developer: Manuel Szecsenyi
/* Description: Responsible for adding a customer and getting their turnover
/*
/**********************************************************************/

CREATE OR REPLACE PACKAGE pa_bonus_customers AS

    procedure sp_add_customer(v_name_in IN VARCHAR,
                           v_surname_in IN VARCHAR,
                           v_phone_number IN VARCHAR,
                           d_date_of_birth_in DATE,
                           v_email_in VARCHAR,
                           n_card_no_in Number);

    procedure sp_update_customer( n_customer_id_in IN NUMBER,
                           v_name_in IN VARCHAR,
                           v_surname_in IN VARCHAR,
                           v_phone_number IN VARCHAR,
                           d_date_of_birth_in DATE,
                           v_email_in VARCHAR,
                           n_card_no_in Number);

    function f_get_customer_turnover_n(n_CUSTOMER_ID_in IN NUMBER) RETURN NUMBER;

    function f_get_customers_rc RETURN SYS_REFCURSOR;

    function f_get_customers_rc(n_customer_id_in NUMBER) RETURN SYS_REFCURSOR;

END pa_bonus_customers;
/

CREATE OR REPLACE PACKAGE BODY pa_bonus_customers AS


    /*********************************************************************/
    /**
    /** Procedure sp_add_customer
    /** In: v_name_in – The first name of the customer to insert.
    /** In: v_surname_in – The last name of the customer to insert.
    /** In: v_phone_number – The phone number of the customer to insert.
    /** In: d_date_of_birth_in – The date of birth of the customer to insert. (YYYY-MM-DD)
    /** In: v_email_in – The email address of the customer to insert.
    /** In: n_card_no_in – The card number of the customer to insert. Usually 1
    /** Developer: Manuel Szecsenyi
    /** Description: This procedures creates a new customer in the database.
    /**              Used to demonstrate PL/SQL with the GUI.
    /**
    /*********************************************************************/
    procedure sp_add_customer(v_name_in IN VARCHAR,
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

    /*********************************************************************/
    /**
    /** Procedure sp_update_customer
    /** In: n_customer_id_in – The customer ID.
    /** In: v_name_in – The first name of the customer to update.
    /** In: v_surname_in – The last name of the customer to update.
    /** In: v_phone_number – The phone number of the customer to update.
    /** In: d_date_of_birth_in – The date of birth of the customer to update. (YYYY-MM-DD)
    /** In: v_email_in – The email address of the customer to update.
    /** In: n_card_no_in – The card number of the customer to update.
    /** Developer: Manuel Szecsenyi
    /** Description: This procedures updates a customer in the database.
    /**
    /*********************************************************************/
    procedure sp_update_customer( n_customer_id_in IN NUMBER,
                           v_name_in IN VARCHAR,
                           v_surname_in IN VARCHAR,
                           v_phone_number IN VARCHAR,
                           d_date_of_birth_in DATE,
                           v_email_in VARCHAR,
                           n_card_no_in Number)
    AS

    BEGIN

        UPDATE BONUS_CUSTOMERS
        SET NAME = v_name_in,
            SURNAME = v_surname_in,
            PHONE_NUMBER = v_phone_number,
            DATE_OF_BIRTH = d_date_of_birth_in,
            EMAIL = v_email_in,
            CARD_NO = n_card_no_in
        WHERE CUSTOMER_ID = n_customer_id_in;

        COMMIT;

    END;

    /*********************************************************************/
    /**
    /** Function: f_get_customer_turnover_n
    /** In: n_CUSTOMER_ID_in – the id of the customer to search for
    /** Returns: The turnover of the customer or -1 if no turnover was made
    /** Developer: Manuel Szecsenyi
    /** Description: Calculates the turnover of a customer and returns it.
    /**
    /*********************************************************************/
    function f_get_customer_turnover_n(n_CUSTOMER_ID_in IN NUMBER) RETURN NUMBER
	as
        n_turnover_out NUMBER := 0;
		begin

            SELECT Sum(SUBTOTAL_NET)
            INTO n_turnover_out
            FROM BONUS_INVOICES
            WHERE CUSTOMER_ID = n_CUSTOMER_ID_in;

            if n_turnover_out IS NULL then
                DBMS_OUTPUT.PUT_LINE('No customer found or no invoices found');
                n_turnover_out := -1;
            end if;

		    return n_turnover_out;

		    -- return -1 if no customer is found
		    EXCEPTION WHEN NO_DATA_FOUND THEN
		        DBMS_OUTPUT.PUT_LINE('No customer found');
		        return -1;

		end;


    /*********************************************************************/
    /**
    /** Function: f_get_customers_n
    /** Returns: rc_cursor_out - All customers
    /** Developer: Manuel Szecsenyi
    /** Description: Returns a table of all customers.
    /**
    /*********************************************************************/
    function f_get_customers_rc RETURN SYS_REFCURSOR
	as
        rc_cursor_out SYS_REFCURSOR;
		begin

            OPEN rc_cursor_out
                FOR SELECT *
                FROM BONUS_CUSTOMERS;

            RETURN rc_cursor_out;

		end;

    /*********************************************************************/
    /**
    /** Function: f_get_customers_n
    /** In: n_CUSTOMER_ID_in – the id of the customer to search for
    /** Returns: rc_cursor_out - Single customer data
    /** Developer: Manuel Szecsenyi
    /** Description: Returns a table of all customers.
    /**
    /*********************************************************************/
    function f_get_customers_rc(n_customer_id_in NUMBER) RETURN SYS_REFCURSOR
	as
        rc_cursor_out SYS_REFCURSOR;
		begin

            OPEN rc_cursor_out
                FOR SELECT *
                FROM BONUS_CUSTOMERS
                WHERE CUSTOMER_ID = n_customer_id_in;

            RETURN rc_cursor_out;

		end;

END pa_bonus_customers;
/
