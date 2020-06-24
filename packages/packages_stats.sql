/**********************************************************************/
/*
/* Filename: packages_stats.pkg
/* Package: bonus_stats
/* Developer: Manuel Szecsenyi
/* Description: Retrieve basic statistics from the database
/*
/**********************************************************************/
CREATE OR REPLACE PACKAGE pa_bonus_stats AS

    function f_get_most_bought_article_rc RETURN BONUS_ARTICLES%ROWTYPE;

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
    function f_get_most_bought_article_rc RETURN BONUS_ARTICLES%ROWTYPE
	as
        rt_article_row_out BONUS_ARTICLES%ROWTYPE;
		begin

            SELECT *
            INTO rt_article_row_out
            FROM (SELECT * FROM BONUS_ARTICLES ORDER BY SOLD_UNITS DESC)
            WHERE ROWNUM = 1;

		end;

END pa_bonus_stats;
/


