/**********************************************************************/
/*
/* Filename: packages_articles.sql
/* Package: pa_bonus_articles
/* Developer: Kurosh Mehdipour
/* Description: Responsible for adding a article, updating a article, get a article by the ID and get all articles
/*
/**********************************************************************/
CREATE OR REPLACE package pa_bonus_articles AS

    PROCEDURE sp_add_article(v_designation_in IN VARCHAR2,
                             v_unit_in IN VARCHAR2,
                             n_net_price_in IN NUMBER,
                             n_tax_rate_id_in IN NUMBER,
                             n_sold_units_in IN NUMBER);

    function  f_get_article_id_rc(n_article_id_in IN NUMBER) RETURN Sys_Refcursor;

    function f_get_articles_rc return Sys_Refcursor;

    PROCEDURE sp_update_article(n_article_id_in IN number,
                                v_designation_in IN VARCHAR2,
                                v_unit_in In VARCHAR2,
                                n_net_price_in IN NUMBER,
                                n_sol_units_in IN NUMBER);

END pa_bonus_articles;
/

CREATE OR REPLACE PACKAGE BODY pa_bonus_articles AS

    /*********************************************************************/
    /**
    /** Procedure sp_add_article
    /** In: n_article_id_in ? The article_id of the article to insert.
    /** In: v_designation_in ? The designation of the article to insert.
    /** In: v_unit_in ? The unit of the article to insert.
    /** In: n_net_price_in ? The net_price of the article to insert.
    /** In: n_tax_rate_id_in ? The tax_rate_id of the article to insert.
    /** In: n_sold_units_in ? The sold units of the article to insert.
    /** Developer: Kurosh Mehdipour
    /** Description: This procedures creates a new article in the database.
    /**
    /*********************************************************************/

    PROCEDURE sp_add_article( v_designation_in IN VARCHAR2, v_unit_in IN VARCHAR2, n_net_price_in IN NUMBER, n_tax_rate_id_in IN NUMBER, n_sold_units_in IN NUMBER) AS

    BEGIN
         INSERT INTO BONUS_ARTICLES
            (ARTICLE_ID, DESIGNATION, UNIT, NET_PRICE, TAX_RATE_ID,SOLD_UNITS)
            VALUES
            (
             article_id_seq.nextval,
             v_designation_in,
             v_unit_in,
             n_net_price_in,
             n_tax_rate_id_in,
             n_sold_units_in
            );
    end;


    /*********************************************************************/
    /**
    /** Function:  f_get_article_id_rc
    /** In: n_article_id_in ? the id of the article to search for
    /** Returns: An article with a specific ID
    /** Developer: Kurosh Mehdipour
    /** Description: Get a spezific article
    /**
    /*********************************************************************/

function  f_get_article_id_rc(n_article_id_in IN NUMBER) RETURN Sys_Refcursor AS
   rc_cursor_out Sys_Refcursor;
        begin
            Open rc_cursor_out FOR Select * from BONUS_ARTICLES WHERE ARTICLE_ID = n_article_id_in;

            return rc_cursor_out;
        end;


/*********************************************************************/
    /**
    /** Function:  f_get_articles_rc
    /** Returns: All articles
    /** Developer: Kurosh Mehdipour
    /** Description: Get all articles
    /**
    /*********************************************************************/

function f_get_articles_rc return Sys_Refcursor as

    rc_cursor_out SYS_REFCURSOR ;
    Begin
        Open rc_cursor_out for Select * FROM BONUS_ARTICLES;

    end;


/*********************************************************************/
    /**
    /** Procedure sp_update_article
    /** In: n_article_id_in ? The article_id of the article to insert.
    /** In: v_designation_in ? The designation of the article to insert.
    /** In: v_unit_in ? The unit of the article to insert.
    /** In: n_net_price_in ? The net_price of the article to insert.
    /** In: n_sold_units_in ? The sold units of the article to insert.
    /** Developer: Kurosh Mehdipour
    /** Description: This procedures updates a article in the database.
    /**
    /*********************************************************************/

    PROCEDURE sp_update_article(n_article_id_in IN number, v_designation_in IN VARCHAR2, v_unit_in In VARCHAR2, n_net_price_in IN NUMBER, n_sol_units_in IN NUMBER) AS
        Begin
            Update BONUS_ARTICLES
                SET  DESIGNATION = v_designation_in,
                     UNIT = v_unit_in,
                     NET_PRICE = n_net_price_in,
                     SOLD_UNITS= n_sol_units_in
                WHERE ARTICLE_ID= n_article_id_in;
        end;



END pa_bonus_articles;
/