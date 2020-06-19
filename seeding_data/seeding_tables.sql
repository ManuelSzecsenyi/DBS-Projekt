-- bonus_tax_rates
INSERT INTO BONUS_TAX_RATES
(TAX_RATE_ID, DESIGNATION, PERCENTAGE) VALUES
(1, '10%', 1.1);

INSERT INTO BONUS_TAX_RATES
(TAX_RATE_ID, DESIGNATION, PERCENTAGE) VALUES
(2, '20%', 1.2);

----------------------------------------------------

-- bonus_postcodes
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1010, 'Innere Stadt');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1020, 'Leopoldstatd');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1030, 'Landstraße');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1040, 'Wieden');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1050, 'Margareten');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1060, 'Mariahilf');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1070, 'Neubau');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1080, 'Josefstadt');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1090, 'Alsergrund');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1100, 'Favoriten');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1110, 'Simmering');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1120, 'Meidling');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1130, 'Hietzing');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1140, 'Penzing');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1150, 'Rudolfsheim-Fünfhaus');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1160, 'Ottakring');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1170, 'Hernals');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1180, 'Währing');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1190, 'Döbling');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1200, 'Brigittenau');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1210, 'Floridsdorf');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1220, 'Donaustadt');
INSERT INTO BONUS_POSTCODES (PLZ, NAME) VALUES (1230, 'Liesing');

----------------------------------------------------


-- bonus_branch_offices
INSERT INTO BONUS_BRANCH_OFFICES (BRANCH_OFFICE_ID, NAME, ADRESS, POSTCODE) VALUES (1, 'Shop Neuer Markt', 'Neuer Markt 17', 1010);
INSERT INTO BONUS_BRANCH_OFFICES (BRANCH_OFFICE_ID, NAME, ADRESS, POSTCODE) VALUES (2, 'Shop Praterstern', 'Praterstern', 1020);
INSERT INTO BONUS_BRANCH_OFFICES (BRANCH_OFFICE_ID, NAME, ADRESS, POSTCODE) VALUES (3, 'Shop Linzerstraße', 'Linzerstraße 34', 1140);
INSERT INTO BONUS_BRANCH_OFFICES (BRANCH_OFFICE_ID, NAME, ADRESS, POSTCODE) VALUES (4, 'Shop Alserstraße', 'Alser Straße 34', 1090);
INSERT INTO BONUS_BRANCH_OFFICES (BRANCH_OFFICE_ID, NAME, ADRESS, POSTCODE) VALUES (5, 'Shop Hundsturm', 'Am Hundsturm 7', 1050);
INSERT INTO BONUS_BRANCH_OFFICES (BRANCH_OFFICE_ID, NAME, ADRESS, POSTCODE) VALUES (6, 'Shop Missin', 'Missindorferstraße', 1140);
INSERT INTO BONUS_BRANCH_OFFICES (BRANCH_OFFICE_ID, NAME, ADRESS, POSTCODE) VALUES (7, 'Shop Tandler', 'Julius-Tandler-Platz Bhf 3', 1090);

----------------------------------------------------

-- bonus_articles
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (1, 'Appetizer - Crab And Brie', 'piece', 1.32, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (2, 'Wine - Mondavi Coastal Private', 'piece', 3.95, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (3, 'Stock - Veal, White', 'kg', 2.05, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (4, 'Beer - Muskoka Cream Ale', 'piece', 3.06, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (5, 'Wine - Red, Mouton Cadet', 'piece', 1.74, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (6, 'Sauce - Soya, Light', 'kg', 1.72, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (7, 'Venison - Liver', 'piece', 2.52, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (8, 'Cornish Hen', 'piece', 3.47, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (9, 'Beef Cheek Fresh', 'piece', 2.68, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (10, 'Cheese - Romano, Grated', 'piece', 2.37, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (11, 'Squash - Sunburst', 'piece', 3.79, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (12, 'Capon - Whole', 'kg', 2.76, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (13, 'Soup - Campbells, Cream Of', 'piece', 1.83, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (14, 'Beets - Golden', 'kg', 2.22, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (15, 'Shark - Loin', 'kg', 3.9, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (16, 'Juice - Tomato, 10 Oz', 'kg', 2.95, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (17, 'Dc Hikiage Hira Huba', 'kg', 2.36, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (18, 'Beer - Mill St Organic', 'kg', 1.07, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (19, 'Pastry - Banana Muffin - Mini', 'kg', 2.17, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (20, 'Water Chestnut - Canned', 'piece', 3.46, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (21, 'Table Cloth 62x114 White', 'piece', 1.32, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (22, 'Loaf Pan - 2 Lb, Foil', 'kg', 1.43, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (23, 'Brownies - Two Bite, Chocolate', 'kg', 2.35, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (24, 'Salmon - Whole, 4 - 6 Pounds', 'kg', 1.51, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (25, 'Iced Tea Concentrate', 'piece', 2.68, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (26, 'Scrubbie', 'kg', 2.09, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (27, 'Brandy Cherry', 'piece', 1.61, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (28, 'Foam Tray S2', 'kg', 3.83, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (29, 'Devonshire Cream', 'kg', 2.91, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (30, 'Bread - Roll, Whole Wheat', 'piece', 3.82, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (31, 'Pastry - Muffin', 'piece', 3.13, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (32, 'Cocoa Butter', 'kg', 3.21, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (33, 'Apricots - Dried', 'kg', 3.15, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (34, 'Energy Drink Bawls', 'piece', 1.16, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (35, 'Beef - Baby, Liver', 'piece', 3.35, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (36, 'Tia Maria', 'kg', 3.21, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (37, 'Yoghurt Tubes', 'piece', 2.42, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (38, 'Capon - Breast, Wing On', 'kg', 1.27, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (39, 'Sauce - Roasted Red Pepper', 'kg', 1.09, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (40, 'Beef Ground Medium', 'piece', 3.97, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (41, 'Spring Roll Veg Mini', 'piece', 1.81, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (42, 'Ecolab - Hand Soap', 'piece', 2.16, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (43, 'Soup - Canadian Pea, Dry Mix', 'kg', 2.66, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (44, 'Pears - Fiorelle', 'kg', 2.57, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (45, 'Buffalo - Striploin', 'piece', 1.55, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (46, 'Coffee Swiss Choc Almond', 'piece', 3.8, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (47, 'Trueblue - Blueberry Cranberry', 'piece', 3.76, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (48, 'Crackers - Graham', 'piece', 2.18, 1, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (49, 'Wine - California 2002', 'kg', 1.18, 2, 0);
insert into bonus_articles (article_id, designation, unit, net_price, tax_rate_id, sold_units) values (50, 'Oxtail - Cut', 'kg', 1.13, 1, 0);

----------------------------------------------------

-- bonus_invoices
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (1, 192, 0, TO_TIMESTAMP('2020-01-04 01:08:05','YYYY-MM-DD HH:MI:SS'), 6);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (2, 182, 0, TO_TIMESTAMP('2019-09-27 11:21:47','YYYY-MM-DD HH:MI:SS'), 7);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (3, 68, 0, TO_TIMESTAMP('2020-01-21 07:54:30','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (4, 88, 0, TO_TIMESTAMP('2020-05-23 01:31:56','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (5, 6, 0, TO_TIMESTAMP('2020-02-20 11:39:16','YYYY-MM-DD HH:MI:SS'), 5);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (6, 40, 0, TO_TIMESTAMP('2019-12-22 11:23:03','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (7, 45, 0, TO_TIMESTAMP('2019-10-19 07:27:08','YYYY-MM-DD HH:MI:SS'), 5);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (8, 141, 0, TO_TIMESTAMP('2020-05-12 12:57:46','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (9, 106, 0, TO_TIMESTAMP('2019-12-02 02:33:10','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (10, 146, 0, TO_TIMESTAMP('2019-05-11 07:40:47','YYYY-MM-DD HH:MI:SS'), 5);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (11, 9, 0, TO_TIMESTAMP('2019-02-25 11:50:01','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (12, 129, 0, TO_TIMESTAMP('2020-03-22 09:08:57','YYYY-MM-DD HH:MI:SS'), 4);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (13, 167, 0, TO_TIMESTAMP('2020-05-08 08:00:32','YYYY-MM-DD HH:MI:SS'), 5);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (14, 9, 0, TO_TIMESTAMP('2019-09-11 03:46:06','YYYY-MM-DD HH:MI:SS'), 2);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (15, 140, 0, TO_TIMESTAMP('2020-04-03 02:35:33','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (16, 47, 0, TO_TIMESTAMP('2019-06-03 06:57:46','YYYY-MM-DD HH:MI:SS'), 2);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (17, 50, 0, TO_TIMESTAMP('2020-01-19 11:48:57','YYYY-MM-DD HH:MI:SS'), 1);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (18, 48, 0, TO_TIMESTAMP('2019-09-15 07:24:10','YYYY-MM-DD HH:MI:SS'), 7);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (19, 41, 0, TO_TIMESTAMP('2019-01-28 07:51:31','YYYY-MM-DD HH:MI:SS'), 6);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (20, 143, 0, TO_TIMESTAMP('2020-05-08 11:57:54','YYYY-MM-DD HH:MI:SS'), 1);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (21, 123, 0, TO_TIMESTAMP('2019-03-10 01:36:07','YYYY-MM-DD HH:MI:SS'), 7);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (22, 73, 0, TO_TIMESTAMP('2019-10-20 06:45:15','YYYY-MM-DD HH:MI:SS'), 2);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (23, 138, 0, TO_TIMESTAMP('2020-02-18 11:48:43','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (24, 1, 0, TO_TIMESTAMP('2019-01-04 11:21:21','YYYY-MM-DD HH:MI:SS'), 2);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (25, 133, 0, TO_TIMESTAMP('2019-07-13 07:04:30','YYYY-MM-DD HH:MI:SS'), 4);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (26, 161, 0, TO_TIMESTAMP('2020-01-21 09:22:24','YYYY-MM-DD HH:MI:SS'), 6);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (27, 66, 0, TO_TIMESTAMP('2019-02-22 08:06:12','YYYY-MM-DD HH:MI:SS'), 4);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (28, 137, 0, TO_TIMESTAMP('2019-05-19 08:42:59','YYYY-MM-DD HH:MI:SS'), 7);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (29, 64, 0, TO_TIMESTAMP('2019-12-29 11:30:37','YYYY-MM-DD HH:MI:SS'), 1);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (30, 51, 0, TO_TIMESTAMP('2019-09-19 08:50:49','YYYY-MM-DD HH:MI:SS'), 4);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (31, 153, 0, TO_TIMESTAMP('2019-03-14 08:40:39','YYYY-MM-DD HH:MI:SS'), 1);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (32, 86, 0, TO_TIMESTAMP('2019-10-26 03:26:58','YYYY-MM-DD HH:MI:SS'), 1);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (33, 88, 0, TO_TIMESTAMP('2020-01-15 06:33:34','YYYY-MM-DD HH:MI:SS'), 1);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (34, 48, 0, TO_TIMESTAMP('2019-03-30 08:22:19','YYYY-MM-DD HH:MI:SS'), 2);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (35, 146, 0, TO_TIMESTAMP('2019-03-15 01:07:59','YYYY-MM-DD HH:MI:SS'), 7);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (36, 21, 0, TO_TIMESTAMP('2019-12-08 12:43:07','YYYY-MM-DD HH:MI:SS'), 4);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (37, 33, 0, TO_TIMESTAMP('2019-02-15 03:42:29','YYYY-MM-DD HH:MI:SS'), 6);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (38, 97, 0, TO_TIMESTAMP('2019-01-07 01:58:59','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (39, 160, 0, TO_TIMESTAMP('2019-05-21 05:57:04','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (40, 142, 0, TO_TIMESTAMP('2019-05-05 11:42:34','YYYY-MM-DD HH:MI:SS'), 2);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (41, 131, 0, TO_TIMESTAMP('2019-01-10 11:45:40','YYYY-MM-DD HH:MI:SS'), 4);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (42, 73, 0, TO_TIMESTAMP('2019-06-22 08:59:28','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (43, 123, 0, TO_TIMESTAMP('2019-01-29 12:12:14','YYYY-MM-DD HH:MI:SS'), 6);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (44, 107, 0, TO_TIMESTAMP('2020-01-01 08:36:43','YYYY-MM-DD HH:MI:SS'), 6);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (45, 186, 0, TO_TIMESTAMP('2019-08-03 11:37:00','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (46, 9, 0, TO_TIMESTAMP('2019-08-27 05:11:23','YYYY-MM-DD HH:MI:SS'), 6);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (47, 34, 0, TO_TIMESTAMP('2019-07-12 03:32:22','YYYY-MM-DD HH:MI:SS'), 1);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (48, 10, 0, TO_TIMESTAMP('2019-07-29 08:22:48','YYYY-MM-DD HH:MI:SS'), 2);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (49, 98, 0, TO_TIMESTAMP('2019-06-04 12:09:46','YYYY-MM-DD HH:MI:SS'), 5);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (50, 119, 0, TO_TIMESTAMP('2020-03-13 12:12:54','YYYY-MM-DD HH:MI:SS'), 1);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (51, 142, 0, TO_TIMESTAMP('2020-05-07 06:04:37','YYYY-MM-DD HH:MI:SS'), 7);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (52, 32, 0, TO_TIMESTAMP('2019-01-27 05:02:27','YYYY-MM-DD HH:MI:SS'), 2);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (53, 55, 0, TO_TIMESTAMP('2019-02-06 11:36:37','YYYY-MM-DD HH:MI:SS'), 7);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (54, 118, 0, TO_TIMESTAMP('2020-02-26 08:21:11','YYYY-MM-DD HH:MI:SS'), 5);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (55, 199, 0, TO_TIMESTAMP('2020-04-28 12:01:28','YYYY-MM-DD HH:MI:SS'), 5);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (56, 163, 0, TO_TIMESTAMP('2020-05-17 12:22:38','YYYY-MM-DD HH:MI:SS'), 1);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (57, 184, 0, TO_TIMESTAMP('2020-04-15 12:57:37','YYYY-MM-DD HH:MI:SS'), 4);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (58, 189, 0, TO_TIMESTAMP('2019-03-02 11:59:31','YYYY-MM-DD HH:MI:SS'), 2);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (59, 42, 0, TO_TIMESTAMP('2019-03-19 11:40:10','YYYY-MM-DD HH:MI:SS'), 2);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (60, 71, 0, TO_TIMESTAMP('2020-04-23 08:39:08','YYYY-MM-DD HH:MI:SS'), 1);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (61, 148, 0, TO_TIMESTAMP('2019-03-16 02:49:56','YYYY-MM-DD HH:MI:SS'), 6);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (62, 50, 0, TO_TIMESTAMP('2019-09-14 11:20:34','YYYY-MM-DD HH:MI:SS'), 4);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (63, 167, 0, TO_TIMESTAMP('2019-06-20 11:03:02','YYYY-MM-DD HH:MI:SS'), 7);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (64, 72, 0, TO_TIMESTAMP('2020-04-13 01:12:17','YYYY-MM-DD HH:MI:SS'), 7);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (65, 66, 0, TO_TIMESTAMP('2020-03-03 12:50:18','YYYY-MM-DD HH:MI:SS'), 4);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (66, 193, 0, TO_TIMESTAMP('2020-02-03 11:36:18','YYYY-MM-DD HH:MI:SS'), 6);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (67, 39, 0, TO_TIMESTAMP('2020-05-09 11:45:02','YYYY-MM-DD HH:MI:SS'), 4);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (68, 110, 0, TO_TIMESTAMP('2020-02-28 11:08:55','YYYY-MM-DD HH:MI:SS'), 2);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (69, 180, 0, TO_TIMESTAMP('2019-12-26 10:44:56','YYYY-MM-DD HH:MI:SS'), 7);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (70, 199, 0, TO_TIMESTAMP('2019-01-31 03:46:46','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (71, 139, 0, TO_TIMESTAMP('2019-05-17 08:59:02','YYYY-MM-DD HH:MI:SS'), 5);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (72, 14, 0, TO_TIMESTAMP('2019-03-02 05:39:16','YYYY-MM-DD HH:MI:SS'), 7);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (73, 137, 0, TO_TIMESTAMP('2019-03-27 07:07:53','YYYY-MM-DD HH:MI:SS'), 6);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (74, 63, 0, TO_TIMESTAMP('2019-11-06 04:04:23','YYYY-MM-DD HH:MI:SS'), 4);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (75, 89, 0, TO_TIMESTAMP('2019-04-21 08:30:47','YYYY-MM-DD HH:MI:SS'), 6);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (76, 121, 0, TO_TIMESTAMP('2019-03-16 11:22:37','YYYY-MM-DD HH:MI:SS'), 5);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (77, 87, 0, TO_TIMESTAMP('2019-07-14 03:48:23','YYYY-MM-DD HH:MI:SS'), 7);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (78, 197, 0, TO_TIMESTAMP('2020-04-23 08:11:19','YYYY-MM-DD HH:MI:SS'), 7);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (79, 156, 0, TO_TIMESTAMP('2019-06-26 04:38:17','YYYY-MM-DD HH:MI:SS'), 5);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (80, 123, 0, TO_TIMESTAMP('2020-05-06 11:53:51','YYYY-MM-DD HH:MI:SS'), 4);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (81, 27, 0, TO_TIMESTAMP('2019-12-03 04:00:26','YYYY-MM-DD HH:MI:SS'), 6);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (82, 163, 0, TO_TIMESTAMP('2020-03-28 11:12:40','YYYY-MM-DD HH:MI:SS'), 2);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (83, 76, 0, TO_TIMESTAMP('2019-05-19 08:55:48','YYYY-MM-DD HH:MI:SS'), 1);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (84, 148, 0, TO_TIMESTAMP('2019-12-07 11:24:21','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (85, 21, 0, TO_TIMESTAMP('2019-03-05 02:08:50','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (86, 57, 0, TO_TIMESTAMP('2020-02-08 09:29:41','YYYY-MM-DD HH:MI:SS'), 5);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (87, 144, 0, TO_TIMESTAMP('2020-03-14 08:53:44','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (88, 105, 0, TO_TIMESTAMP('2019-01-13 07:49:22','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (89, 188, 0, TO_TIMESTAMP('2020-05-02 07:47:50','YYYY-MM-DD HH:MI:SS'), 6);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (90, 16, 0, TO_TIMESTAMP('2020-03-15 11:09:50','YYYY-MM-DD HH:MI:SS'), 5);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (91, 36, 0, TO_TIMESTAMP('2020-04-02 10:36:09','YYYY-MM-DD HH:MI:SS'), 6);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (92, 31, 0, TO_TIMESTAMP('2020-05-24 01:52:57','YYYY-MM-DD HH:MI:SS'), 1);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (93, 149, 0, TO_TIMESTAMP('2019-11-02 10:31:19','YYYY-MM-DD HH:MI:SS'), 5);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (94, 10, 0, TO_TIMESTAMP('2020-05-28 02:34:12','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (95, 118, 0, TO_TIMESTAMP('2019-01-31 06:21:43','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (96, 148, 0, TO_TIMESTAMP('2019-01-08 11:09:21','YYYY-MM-DD HH:MI:SS'), 1);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (97, 175, 0, TO_TIMESTAMP('2020-01-10 06:22:32','YYYY-MM-DD HH:MI:SS'), 3);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (98, 97, 0, TO_TIMESTAMP('2020-04-10 08:08:47','YYYY-MM-DD HH:MI:SS'), 4);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (99, 100, 0, TO_TIMESTAMP('2019-06-17 11:59:55','YYYY-MM-DD HH:MI:SS'), 7);
insert into bonus_invoices (INVOICE_ID, customer_id, subtotal_net, purchase_timestamp, branch_office_id) values (100, 62, 0, TO_TIMESTAMP('2020-05-29 08:54:45','YYYY-MM-DD HH:MI:SS'), 3);

----------------------------------------------------


COMMIT;