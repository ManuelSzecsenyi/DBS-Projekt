/*********************************************************************/
/**
/** Trigger: tr_ar_lu_update_sold_units
/** Type: After row
/** Type Extension: insert or update
/** Developer: Kurosh Mehdipour
/** Description: Updates the sold_unit of the article
/**
/*********************************************************************/

CREATE Or REPLACE TRIGGER tr_ar_lu_update_sold_units after INSERT OR UPDATE on BONUS_POSITIONS
for each row
    DECLARE
        l_n_new_sold_units Number;
        l_n_current_sold_units number;
    BEGIN

        IF INSERTING THEN

        l_n_new_sold_units := :NEW.QUANTITY;

             UPDATE BONUS_ARTICLES
                 SET SOLD_UNITS = (
                     Select SOLD_UNITS + l_n_new_sold_units from BONUS_ARTICLES where ARTICLE_ID = :NEW.ARTICLE_ID)
                         WHERE ARTICLE_ID = :NEW.ARTICLE_ID;

         ELSIF UPDATING THEN

        Select SOLD_UNITS INTO l_n_current_sold_units from BONUS_ARTICLES WHERE BONUS_ARTICLES.ARTICLE_ID= :NEW.ARTICLE_ID;

         If (l_n_current_sold_units > 0) THEN

             l_n_new_sold_units := :OLD.QUANTITY;

          --Subtraktion der alten Sold-unit
             UPDATE BONUS_ARTICLES
                 SET SOLD_UNITS = (
                         Select SOLD_UNITS - l_n_new_sold_units from BONUS_ARTICLES where ARTICLE_ID = :NEW.ARTICLE_ID )
                         WHERE ARTICLE_ID = :NEW.ARTICLE_ID;


             l_n_new_sold_units := :NEW.QUANTITY;
             UPDATE BONUS_ARTICLES
                 SET SOLD_UNITS = (
                         Select SOLD_UNITS + l_n_new_sold_units from BONUS_ARTICLES  where ARTICLE_ID = :NEW.ARTICLE_ID)
                            WHERE ARTICLE_ID = :NEW.ARTICLE_ID ;

             Else
             l_n_new_sold_units := :NEW.QUANTITY;
             UPDATE BONUS_ARTICLES
                 SET SOLD_UNITS = (
                         Select SOLD_UNITS + l_n_new_sold_units from BONUS_ARTICLES  where ARTICLE_ID = :NEW.ARTICLE_ID)
                            WHERE ARTICLE_ID = :NEW.ARTICLE_ID ;

               end if;
        end if;
    END;
/;