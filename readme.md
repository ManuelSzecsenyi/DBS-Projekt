

# Projekt Bonusclub Documentation



## Views



## Trigger

### Calculate subtotal



### Delete Customer

(Before delete müssen Positionen und Rechnungen gelöscht werden.) oder in Invoices updaten zu einer anderen Zahl 

### Update sold units





## Packages

### pa_bonus_customers

Package name: `pa_bonus_customer`

Entwickler: Manuel Szecsenyi

Beschreibung: Ermöglicht das Aufrufen von Kundendaten. 

#### sp_add_customer

Fügt einen neuen Kunden hinzu. 

```sql
procedure sp_add_customer(v_name_in IN VARCHAR,
                           v_surname_in IN VARCHAR,
                           v_phone_number IN VARCHAR,
                           d_date_of_birth_in DATE,
                           v_email_in VARCHAR,
                           n_card_no_in Number);
```

##### Parameter

`v_name_in IN VARCHAR` - Der Vorname des Kunden

`v_surname_in IN VARCHAR` - Der Nachname des Kunden

`v_phone_number IN VARCHAR` - Die Telefefonnummer des Kunden

`d_date_of_birth_in DATE` - Das Geburtsdatum des Kunden

`v_email_in VARCHAR` - Die Email-Adresse des Kunden

`n_card_no_in Number` - Die Kartennummer des Kunden

##### Rückgabewert

Die Prozedur gibt nichts zurück.

#### sp_update_customer

Aktualisiert die Daten eines Kunden in der Datenbank

```sql
procedure sp_update_customer( n_customer_id_in IN NUMBER,
                       v_name_in IN VARCHAR,
                       v_surname_in IN VARCHAR,
                       v_phone_number IN VARCHAR,
                       d_date_of_birth_in DATE,
                       v_email_in VARCHAR,
                       n_card_no_in Number)
```

##### Parameter

`n_customer_id_in IN NUMBER` - Die ID der Person. Wird zur Identifizierung verwendet.

`v_name_in IN VARCHAR` - Der Vorname des Kunden

`v_surname_in IN VARCHAR` - Der Nachname des Kunden

`v_phone_number IN VARCHAR` - Die Telefefonnummer des Kunden

`d_date_of_birth_in DATE` - Das Geburtsdatum des Kunden

`v_email_in VARCHAR` - Die Email-Adresse des Kunden

`n_card_no_in Number` - Die Kartennummer des Kunden

##### Rückgabewert

Die Prozedur gibt nichts zurück.

#### f_get_customer_turnover_n

Nimmt die KundenID entgegen und gibt den Gesamtumsatz den der Kunde in den Geschäften hinterlassen hat zurück. 

```sql
function f_get_customer_turnover_n(n_CUSTOMER_ID_in IN NUMBER) RETURN NUMBER;
```

##### Parameter

`n_CUSTOMER_ID_in IN NUMBER` - Die ID des Kunden

##### Rückgabewert

`NUMBER` - Der Umsatz des Kunden. Bei einem Fehler wird  `-1` zurück gegeben. 

#### f_get_customers_rc

Gibt alle Kunden zurück. 

```sql
function f_get_customers_rc RETURN SYS_REFCURSOR
```

##### Parameter

Keine Parameter.

##### Rückgabewert

`SYS_REFCURSOR` - Alle Kunden

#### f_get_customers_rc

Gibt einen Kunden zurück mit der angegeben ID. 

```sql
function f_get_customers_rc(n_customer_id_in NUMBER) RETURN SYS_REFCURSOR
```

##### Parameter

`n_customer_id_in NUMBER` - Die KundenID

##### Rückgabewert

`SYS_REFCURSOR` - Kunde mit der angegebenen ID

### Articles

#### P: Add

#### P: Update

#### P: List

### pa_bonus_branch

Package name: `pa_bonus_branch`

Entwickler: Manuel Szecsenyi

Beschreibung: Ermöglicht das Aufrufen von Filialdaten. 

#### f_get_branches

Gibt alle Filialen zurück. 

```sql
function f_get_branches RETURN SYS_REFCURSOR
```

##### Parameter

Keine Parameter. 

##### Rückgabewert

`SYS_REFCURSOR` - Alle abgespeicherten Filialen.  

#### f_get_branch

Gibt eine die Filiale zurück mit der angegebenen ID. 

```sql
function f_get_branch(n_branch_id_in IN NUMBER) RETURN SYS_REFCURSOR
```

##### Parameter

`n_branch_id_in NUMBER` - Eine Filialid

##### Rückgabewert

`SYS_REFCURSOR` - Die Filiale mit der angegebenen ID.  

### pa_bonus_invoices

Package name: `pa_bonus_invoices`

Entwickler: Manuel Szecsenyi

Beschreibung: Hinzufügen und aktualisieren von Rechnungen ist mit diesem Package möglich. Es können auch Artikel hinzugefügt und gelöscht werden. Aber Rechnungsdaten können abgerufen werden.  

#### sp_add_invoice

Fügt eine neue Rechnung hinzu. Das System ermittelt selbständig die nächste Rechnungsnummer und speichert den aktuellen Zeitstempel ab. Die Rechnungen sind leer und haben Anfangs einen Nettobetrag von Null (0€). 

```sql
PROCEDURE sp_add_invoice(
        n_customer_id_in IN NUMBER,
        n_branch_office_id_in IN NUMBER,
        )
```
##### Parameter

`n_customer_id_in IN NUMBER` - Der Kunde zu dem die Rechnung abgespeichert werden soll. 

`n_branch_office_id_in` - Die Filial-ID in der der Einkauf getätigt wurde.

##### Rückgabewert

Kein Rückgabewert 

#### sp_update_invoice

Aktualisiert die wichtigsten Metainformationen einer Rechnung. Die Rechnungs-ID wird nicht verändert.

```sql
PROCEDURE sp_update_invoice(
        n_invoice_id_in IN NUMBER,
        n_customer_id_in IN NUMBER,
        d_purchase_timestamp_in IN TIMESTAMP,
        n_branch_office_id_in IN NUMBER
        )
```

##### Parameter

`n_invoice_id_in` - Die Rechnungs-ID der Rechnung welche geändert werden soll. Die ID kann nicht verändert werden. 

`n_customer_id_in` - Der Kunde zu dem die Rechnung gehört. 

`n_purchase_timestamp_in` - Der Timestamp des Einkaufs.

`n_branch_office_id_in` - Die Filial-ID in der der Einkauf getätigt wurde. 

##### Rückgabewert

Kein Rückgabewert

#### sp_add_article

Fügt einen Artikel mit der angegebenen Stückzahl zu einer Rechnung hinzu. Es wird der im Artikel hinterlegte Preis verrechnet. 

```sql
PROCEDURE sp_add_article(
        n_invoice_id_in IN NUMBER,
        n_article_id_in  IN NUMBER,
        n_quantity_in  IN NUMBER
        )
```

##### Parameter

`n_invoice_id_in` - Die Rechnungs-ID der Rechnung. 

`n_article_id_in` - Die Artikel-ID eines Artikels

`n_quantity_in` - Wie viel Stück des Produkte soll verrechnet werden?

##### Rückgabewert

Kein Rückgabewert. 

#### sp_delete_article

Der angegebene Artikel auf der Rechnung wird entfernt. Die Rechnungspositionen werden nachgerückt.

```sql
PROCEDURE sp_delete_article(
        n_invoice_id_in IN NUMBER,
        n_article_id_in  IN NUMBER
        )
```

##### Parameter

`n_invoice_id_in` - Die Rechnungs-ID der Rechnung. 

`n_article_id_in` - Die Artikel-ID eines Artikels

##### Rückgabewert

Kein Rückgabewert.  

#### f_get_invoices_rc

Gibt alle Rechnungen zurück.

```sql
function f_get_invoices_rc RETURN SYS_REFCURSOR
```

##### Parameter

Keine Parameter.

##### Rückgabewert

`rc_cursor_out` - Alle vorhandenen Rechnungen

#### f_get_invoice_rc

Gibt die Metadaten einer Rechnung zurück.

```sql
function f_get_invoice_rc(n_invoice_id_in in NUMBER) RETURN SYS_REFCURSOR
```

##### Parameter

`n_invoice_id_in` - Die Rechnungs-ID der Rechnung.

##### Rückgabewert

``rc_cursor_out` - Eine Rechnung mit der angegebenen ID

#### f_get_invoice_articles_rc

Gibt alle Positionen einer Rechnung zurück

```sql
function f_get_invoice_articles_rc(n_invoice_id_in in NUMBER) RETURN SYS_REFCURSOR
```

##### Parameter

`n_invoice_id_in` - Die Rechnungs-ID der Rechnung.

##### Rückgabewert

`rc_cursor_out` - Alle vorhandenen Positionen

### pa_bonus_stats

Package name: `pa_bonus_stats`

Entwickler: Manuel Szecsenyi

Beschreibung: Mit diesem Package können verschiedene Statistken ausgelesen und zurückgesetzt werden.

#### f_get_most_bought_article_rt

Gibt den Artikel zurück mit dem größten `sold_units` Attribut. Zählt **nicht** die Häufigkeit eines Artikels in den Positionen. Diese Statistik kann mit dem zurücksetzen der verkauften Einheiten eines Produktes verändert werden. 

```sql
function f_get_most_bought_article_rt RETURN BONUS_ARTICLES%ROWTYPE;
```

##### Parameter

Keine Parameter

##### Rückgabewert

`rt_article_row_out` - Ein Eintrag aus der Tabelle Artikel.

#### f_get_customer_with_highest_turnover_n

Gibt den Kunden mit dem größten Umsatz zurück. 

```sql
function f_get_customer_with_highest_turnover_rt RETURN NUMBER;
```

##### Parameter

Diese Funktion nimmt keine Parameter entgegen. 

##### Rückgabewert

`n_customer_id_out NUMBER` - Die Id des Kunden mit dem größten Umsatz.  

#### ps_reset_sold_units

```sql
PROCEDURE ps_reset_sold_units(
        n_article_id_in IN NUMBER
        )
```

##### Parameter

`n_article_id_in` - Der Artikel welcher zurückgesetzt werden soll. 

##### Rückgabewert

Kein Rückgabewert.

##### Description

Setzt die `sold_units` des Artikels auf null (0). 