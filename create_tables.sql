--------------------------------------------------------
--  Bonusclub
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table Kunden
--------------------------------------------------------

  CREATE TABLE "Kunden" 
   (	
  "KundenID" NUMBER PRIMARY KEY, 
	"Vorname" VARCHAR2(30), 
	"Nachname" VARCHAR2(30),
	"Telefonnummer" NUMBER,
	"Geburtstag" DATE,
	"Tag der Anmeldung" Timestamp,
	"Email" VARCHAR2(50),
	"Kartennummer" Number,
	"Mitgliedsnummer" Number
	
   ) ;
   
--------------------------------------------------------
--  DDL for Table Steuersaetze
--------------------------------------------------------

  CREATE TABLE "Steuersaetze" 
   (	
  "SteuersatzID" NUMBER, 
	"Bezeichnung" VARCHAR2(30),
	"Prozentsatz" Number
   );
   
--------------------------------------------------------
--  DDL for Table Artikel
--------------------------------------------------------

  CREATE TABLE "Artikel" 
   (	
  "ArtikelID" NUMBER, 
	"Bezeichnung" VARCHAR2(30),
	"Einheit" Number,
	"Nettopreis" Number,
	"SteuersatzID" NUMBER
   );
   
--------------------------------------------------------
--  DDL for Table Positionen
--------------------------------------------------------

  CREATE TABLE "Positionen" 
   (	
  "RechnungsID" NUMBER, 
	"ArtikelID" NUMBER,
	"Stückpreis" NUMBER,
	"Menge" NUMBER,
	"Position" NUMBER
   );
   
--------------------------------------------------------
--  DDL for Table Rechnung
--------------------------------------------------------

  CREATE TABLE "Rechnung" 
   (	
  "RechnungsID" NUMBER, 
	"KundenID" NUMBER,
	"Zwischensumme Netto" NUMBER,
	"Timestamp" TIMESTAMP,
	"FilialenID" NUMBER
   );
   
--------------------------------------------------------
--  DDL for Table Filialen
--------------------------------------------------------

  CREATE TABLE "Filialen" 
   (	
  "FilialenID" NUMBER, 
	"Name" Varchar(30),
	"Adresse" Varchar(50),
	"Postleitzahl" NUMBER
   );
   
--------------------------------------------------------
--  DDL for Table Postleitzahlen
--------------------------------------------------------

  CREATE TABLE "Postleitzahlen" 
   (	
  "PLZ" NUMBER, 
	"Name" Varchar(30)
   );
 

  --  Constraints for Table Kunden
--------------------------------------------------------

  ALTER TABLE "Kunden" MODIFY ("KundenID" NOT NULL ENABLE);
  ALTER TABLE "Kunden" MODIFY ("Vorname" NOT NULL ENABLE);
  ALTER TABLE "Kunden" MODIFY ("Nachname" NOT NULL ENABLE);
  ALTER TABLE "Kunden" MODIFY ("Geburtstag" NOT NULL ENABLE);
  ALTER TABLE "Kunden" MODIFY ("Tag der Anmeldung" NOT NULL ENABLE);
  ALTER TABLE "Kunden" MODIFY ("Email" NOT NULL ENABLE);
  ALTER TABLE "Kunden" MODIFY ("Kartennummer" NOT NULL ENABLE);
  ALTER TABLE "Kunden" MODIFY ("Mitgliedsnummer" NOT NULL ENABLE);
  
  
  --  Constraints for Table Steuersätze
--------------------------------------------------------

  ALTER TABLE "Steuersaetze" MODIFY ("SteuersatzID" NOT NULL ENABLE);
  ALTER TABLE "Steuersaetze" MODIFY ("Bezeichnung" NOT NULL ENABLE);
  ALTER TABLE "Steuersaetze" MODIFY ("Prozentsatz" NOT NULL ENABLE);
	ALTER TABLE "Steuersaetze" ADD PRIMARY KEY ("SteuersatzID") ENABLE;
	
  --  Constraints for Table Postleitzahlen
--------------------------------------------------------

  ALTER TABLE "Postleitzahlen" MODIFY ("PLZ" NOT NULL ENABLE);
  ALTER TABLE "Postleitzahlen" MODIFY ("Name" NOT NULL ENABLE);
	ALTER TABLE "Postleitzahlen" ADD PRIMARY KEY ("PLZ") ENABLE;

  --  Constraints for Table Artikel
--------------------------------------------------------

  ALTER TABLE "Artikel" MODIFY ("ArtikelID" NOT NULL ENABLE);
  ALTER TABLE "Artikel" MODIFY ("Bezeichnung" NOT NULL ENABLE);
  ALTER TABLE "Artikel" MODIFY ("Einheit" NOT NULL ENABLE);
 	ALTER TABLE "Artikel" MODIFY ("Nettopreis" NOT NULL ENABLE); 
	ALTER TABLE "Artikel" ADD PRIMARY KEY ("ArtikelID") ENABLE;
	
  --  Constraints for Table Filialen
--------------------------------------------------------

  ALTER TABLE "Filialen" MODIFY ("FilialenID" NOT NULL ENABLE);
  ALTER TABLE "Filialen" MODIFY ("Name" NOT NULL ENABLE);
  ALTER TABLE "Filialen" MODIFY ("Adresse" NOT NULL ENABLE);
	ALTER TABLE "Filialen" ADD PRIMARY KEY ("FilialenID") ENABLE;
	
  --  Constraints for Table Rechnung
--------------------------------------------------------

  ALTER TABLE "Rechnung" MODIFY ("RechnungsID" NOT NULL ENABLE);
  ALTER TABLE "Rechnung" MODIFY ("Zwischensumme Netto" NOT NULL ENABLE);
  ALTER TABLE "Rechnung" MODIFY ("Timestamp" NOT NULL ENABLE);
	ALTER TABLE "Rechnung" ADD PRIMARY KEY ("RechnungsID") ENABLE;

  --  Constraints for Table Positionen
--------------------------------------------------------

  ALTER TABLE "Positionen" MODIFY ("Stückpreis" NOT NULL ENABLE);
  ALTER TABLE "Positionen" MODIFY ("Menge" NOT NULL ENABLE);
  ALTER TABLE "Positionen" MODIFY ("Position" NOT NULL ENABLE);
	ALTER TABLE "Positionen" ADD PRIMARY KEY ("RechnungsID","ArtikelID") ENABLE;
	
--  Ref Constraints for Table Artikel
--------------------------------------------------------

  ALTER TABLE "Artikel" ADD FOREIGN KEY ("SteuersatzID")
	  REFERENCES "Steuersaetze" ("SteuersatzID") ENABLE;
	  
--  Ref Constraints for Table Filialen
--------------------------------------------------------

  ALTER TABLE "Filialen" ADD FOREIGN KEY ("Postleitzahl")
	  REFERENCES "Postleitzahlen" ("PLZ") ENABLE;

--  Ref Constraints for Table Rechnung
--------------------------------------------------------

  ALTER TABLE "Rechnung" ADD FOREIGN KEY ("KundenID")
	  REFERENCES "Kunden" ("KundenID") ENABLE;
	  
	 ALTER TABLE "Rechnung" ADD FOREIGN KEY ("FilialenID")
	  REFERENCES "Filialen" ("FilialenID") ENABLE;

--  Ref Constraints for Table Positionen
--------------------------------------------------------

  ALTER TABLE "Positionen" ADD FOREIGN KEY ("RechnungsID")
	  REFERENCES "Rechnung" ("RechnungsID") ENABLE;
	
  ALTER TABLE "Positionen" ADD FOREIGN KEY ("ArtikelID")
	  REFERENCES "Artikel" ("ArtikelID") ENABLE;
	

	  

	  

	  
	  


	





	
	

 

   

   
