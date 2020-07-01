/**********************************************************************/
/*
/* Filename: packages_stats.pkg
/* Package: bonus_stats
/* Developer: Manuel Szecsenyi
/* Description: Retrieve basic statistics from the database
/*
/**********************************************************************/
CREATE OR REPLACE PACKAGE pa_bonus_stats AS

    function f_get_most_bought_article_rc RETURN SYS_REFCURSOR;

--     function f_get_customer_max_turnover_rt RETURN BONUS_CUSTOMERS%ROWTYPE;


    PROCEDURE ps_reset_sold_units(
        n_article_id_in IN NUMBER
        );

END pa_bonus_stats;
/

CREATE OR REPLACE PACKAGE BODY pa_bonus_stats AS

    /*********************************************************************/
    /**
    /** Function: f_get_most_bought_article_rc
    /** Returns: rt_article_row_out - Single article rowtype
    /** Developer: Manuel Szecsenyi
    /** Description: Returns the article with the highest sold units.
    /**
    /*********************************************************************/
    function f_get_most_bought_article_rc RETURN SYS_REFCURSOR
	as
        rc_cursor_out SYS_REFCURSOR;
		begin

            OPEN rc_cursor_out
                FOR SELECT *
                FROM (SELECT * FROM BONUS_ARTICLES ORDER BY SOLD_UNITS DESC)
                WHERE ROWNUM = 1;

            return rc_cursor_out;

		end;

    /*********************************************************************/
    /**
    /** Function: f_get_customer_with_highest_turnover_n
    /** Returns: rt_customer_row_out - Single customer rowtype
    /** Developer: Manuel Szecsenyi
    /** Description: Returns the customer with the highest turnover.
    /**
    /*********************************************************************/

--      TODO von Kuri
--     function f_get_customer_with_highest_turnover_n RETURN NUMBER
-- 	as
--         n_customer_id_out NUMBER;
-- 		begin
--
--             SELECT CUSTOMER_ID
--             INTO n_customer_id_out
--             FROM (SELECT * FROM CUSTOMER_STATISTIC ORDER BY NETTOUMSATZ DESC)
--             WHERE ROWNUM = 1;
--
--             return n_customer_id_out;
--
-- 		end;



    /*********************************************************************/
    /**
    /** Procedure sp_update_invoice
    /** In: n_article_id_in – The article which will reset.
    /** Developer: Manuel Szecsenyi
    /** Description: Resets the sold units of a product to zero.
    /**
    /*********************************************************************/
    PROCEDURE ps_reset_sold_units(
        n_article_id_in IN NUMBER
        )
    AS
    BEGIN
        UPDATE BONUS_ARTICLES
        SET SOLD_UNITS = 0
        WHERE ARTICLE_ID = n_article_id_in;
    END;

END pa_bonus_stats;
/