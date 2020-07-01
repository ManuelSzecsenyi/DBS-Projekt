
---Create Indexes
--Bonus_articles
CREATE index ind_tax_rate_id on BONUS_ARTICLES(TAX_RATE_ID);

--Bonus_positions
CREATE index ind_invoice_id on BONUS_POSITIONS(INVOICE_ID);
CREATE index ind_article_id on BONUS_POSITIONS(ARTICLE_ID);

--Bonus_invoices
CREATE index ind_customer_id on BONUS_INVOICES(CUSTOMER_ID);
CREATE index ind_branch_office_id on BONUS_INVOICES(BRANCH_OFFICE_ID);

--Bonus_branch_offices
CREATE index ind_postcode on BONUS_BRANCH_OFFICES(POSTCODE);



