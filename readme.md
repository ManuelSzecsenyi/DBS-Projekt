

## Views



## Trigger

### Calculate subtotal



### Delete Customer

(Before delete müssen Positionen und Rechnungen gelöscht werden.) oder in Invoices updaten zu einer anderen Zahl 

### Update sold units





## Packages

### Customers

#### P: Update a customer

```plsql
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
```plsql
PROCEDURE add_invoice(
        n_customer_id_in IN NUMBER,
        n_branch_office_id_in IN NUMBER
        );
```
##### Input

`n_customer_id_in` - Der Kunde zu dem die Rechnung gehört. 

`n_branch_office_id_in` - Die Filial-ID in der der Einkauf getätigt wurde. 

##### Output

`n_invoice_id_out` - Die Rechnungs-ID der neu angelegten Rechnung. 

#### P: Update Invoice

Eckdaten (Metadaten)

#### P: Add Article (id)

#### P: Delete Article

#### F: List all

#### F: List invoice data

#### F: List articles (invoice_id IN)



