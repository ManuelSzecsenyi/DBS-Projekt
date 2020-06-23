

## Views



## Trigger

### Calculate subtotal



### Delete Customer

(Before delete müssen Positionen und Rechnungen gelöscht werden.) oder in Invoices updaten zu einer anderen Zahl 

### Update sold units





## Packages

### Customers

#### P: Update a customer

```sql
procedure sp_update_customer( n_customer_id_in IN NUMBER,
                       v_name_in IN VARCHAR,
                       v_surname_in IN VARCHAR,
                       v_phone_number IN VARCHAR,
                       d_date_of_birth_in DATE,
                       v_email_in VARCHAR,
                       n_card_no_in Number)
```

#### F: Turnover 

#### P: Delete (DSGVO)

Nur als Prozedur funktioniert nur wenn der Trigger programmiert worden ist. 

### Articles

#### P: Add

#### P: Update

#### P: List

### Invoices

#### P: Add Invoice
```sql
PROCEDURE sp_add_invoice(
        n_customer_id_in IN NUMBER,
        n_branch_office_id_in IN NUMBER,
        n_invoice_id_out OUT NUMBER
        )
```
##### Input

`n_customer_id_in` - Der Kunde zu dem die Rechnung gehört. 

`n_branch_office_id_in` - Die Filial-ID in der der Einkauf getätigt wurde. 

##### Output

`n_invoice_id_out` - Die Rechnungs-ID der neu angelegten Rechnung. 

##### Description

Speichert eine neue leere Rechnung zu einem Kunden und einer Filiale ab. 

#### P: Update Invoice

```sql
PROCEDURE sp_update_invoice(
        n_invoice_id_in IN NUMBER,
        n_customer_id_in IN NUMBER,
        d_purchase_timestamp_in IN TIMESTAMP,
        n_branch_office_id_in IN NUMBER
        )
```

##### Input

`n_invoice_id_in` - Die Rechnungs-ID der Rechnung welche geändert werden soll. Die ID kann nicht verändert werden. 

`n_customer_id_in` - Der Kunde zu dem die Rechnung gehört. 

`n_purchase_timestamp_in` - Der Timestamp des Einkaufs.

`n_branch_office_id_in` - Die Filial-ID in der der Einkauf getätigt wurde. 

##### Output

`---`

##### Description

Aktualisiert die wichtigsten Metainformationen einer Rechnung. Die Rechnungs-ID wird nicht verändert.

#### P: Add Article

```sql
PROCEDURE sp_add_article(
        n_invoice_id_in IN NUMBER,
        n_article_id_in  IN NUMBER,
        n_quantity_in  IN NUMBER
        )
```

##### Input

`n_invoice_id_in` - Die Rechnungs-ID der Rechnung. 

`n_article_id_in` - Die Artikel-ID eines Artikels

`n_quantity_in` - Wie viel Stück des Produkte soll verrechnet werden?

##### Output

`---`

##### Description

Fügt einen Artikel mit der angegebenen Stückzahl zu einer Rechnung hinzu. Es wird der im Artikel hinterlegte Preis verrechnet. 

#### P: Delete Article

```sql
PROCEDURE sp_delete_article(
        n_invoice_id_in IN NUMBER,
        n_article_id_in  IN NUMBER
        )
```

##### Input

`n_invoice_id_in` - Die Rechnungs-ID der Rechnung. 

`n_article_id_in` - Die Artikel-ID eines Artikels

##### Output

`---`

##### Description

Der angegegebene Artikel auf der Rechnung wird entfernt. Die Rechnungspositionen werden nachgerückt.  

#### F: Get all invoices

```sql
function f_get_invoices_rc RETURN SYS_REFCURSOR
```

##### Input

`---` 

##### Output

`rc_cursor_out` - Alle vorhandenen Rechnungen

##### Description

Gibt alle Rechnungen zurück. Nützlich für die Ansicht in der GUI.

#### F: Get invoice

```sql

```

##### Input

`n_invoice_id_in` - Die Rechnungs-ID der Rechnung.

##### Output

``rc_cursor_out` - Ein Pointer auf die Rechnung

##### Description

Gibt die Metadaten einer Rechnung zurück. Nützlich für die Ansicht in der GUI.  

#### F: List articles (invoice_id IN)

```sql

```

##### Input

`n_invoice_id_in` - Die Rechnungs-ID der Rechnung.

##### Output

`rc_cursor_out` - Alle vorhandenen Positionen

##### Description

Gibt alle Positionen einer Rechnung zurück. Nützlich für die Ansicht in der GUI.  

