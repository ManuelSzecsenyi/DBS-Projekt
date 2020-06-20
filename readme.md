## Packages

### Customers

#### Update a customer

```sql
procedure sp_update_customer( n_customer_id_in IN NUMBER,
                       v_name_in IN VARCHAR,
                       v_surname_in IN VARCHAR,
                       v_phone_number IN VARCHAR,
                       d_date_of_birth_in DATE,
                       v_email_in VARCHAR,
                       n_card_no_in Number)
```