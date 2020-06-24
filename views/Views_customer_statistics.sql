
/*********************************************************************
/** Table: bonus_customers, bonus_invoices
/**Developer: Kurosh Mehdipour
/**Description: Creating View customer_statistic
/**
/*********************************************************************/
CREATE View customer_statistic as
Select name AS Name, surname AS Nachname, card_no AS Mitgliedsnummer, count(BONUS_INVOICES.CUSTOMER_ID) AS Anzahl_der_Rechnungen, Sum(subtotal_net) AS Nettoumsatz
from BONUS_CUSTOMERS join BONUS_INVOICES on BONUS_CUSTOMERS.CUSTOMER_ID = BONUS_INVOICES.CUSTOMER_ID
GROUP BY name, surname, card_no;
