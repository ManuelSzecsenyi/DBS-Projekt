/*********************************************************************/
/**
/** Table: bonus_article_statistics
/** Developer: Manuel Szecsenyi
/** Description: Zeigt verkauften Mengen und den gesamten Nettoumsatz
/**              eines Artikels. Zusätzlich kann man sehen in welchen
/**              Bezirk das Produkt am besten verkauft wird.
/**
/*********************************************************************/
CREATE VIEW bonus_article_statistics AS (
    SELECT * FROM (
        with amount as (
            -- Sold units
            SELECT ARTICLE_ID, SOLD_UNITS
            FROM BONUS_ARTICLES
            ),
            turnover as (
            -- Turnover
            SELECT ARTICLE_ID, UNIT_PRICE * QUANTITY AS Turnover
            FROM BONUS_POSITIONS
            ),
            postcode_units as (
            -- In which postal code was this product sold most?
            SELECT BONUS_POSITIONS.ARTICLE_ID, STATS_MODE(POSTCODE) as codes
            FROM BONUS_POSITIONS
            JOIN BONUS_INVOICES BI on BONUS_POSITIONS.INVOICE_ID = BI.INVOICE_ID
            JOIN BONUS_BRANCH_OFFICES BBO on BI.BRANCH_OFFICE_ID = BBO.BRANCH_OFFICE_ID
            GROUP BY ARTICLE_ID
            )
        SELECT amount.ARTICLE_ID, amount.SOLD_UNITS, Sum(turnover.Turnover) AS total_turnover, postcode_units.codes AS postcode
        FROM amount
        JOIN turnover ON amount.ARTICLE_ID = turnover.ARTICLE_ID
        JOIN postcode_units ON turnover.ARTICLE_ID = postcode_units.ARTICLE_ID
        GROUP BY amount.ARTICLE_ID, amount.SOLD_UNITS, postcode_units.codes
    )
);

DROP VIEW bonus_article_statistics;

SELECT * FROM bonus_article_statistics;