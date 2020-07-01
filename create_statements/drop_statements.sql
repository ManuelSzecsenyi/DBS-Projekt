/**
  Drop everything
  Developer: Kurosh Mehdipour
 */
DROP VIEW BONUS_ARTICLE_STATISTICS;
DROP VIEW BONUS_CUSTOMER_STATISTIC;

DROP SEQUENCE bonus_customers_seq;
DROP SEQUENCE bonus_invoices_seq;
DROP SEQUENCE article_id_seq;

Drop index ind_tax_rate_id;
DROP index ind_invoice_id;
DROP index ind_article_id;
DROP index ind_customer_id;
Drop index ind_branch_office_id;
DROP index ind_postcode;

DROP TABLE BONUS_POSITIONS;
DROP TABLE BONUS_INVOICES;
DROP TABLE BONUS_ARTICLES;
DROP TABLE BONUS_TAX_RATES;
DROP TABLE BONUS_BRANCH_OFFICES;
Drop TABLE BONUS_POSTCODES;
DROP TABLE BONUS_CUSTOMERS;


