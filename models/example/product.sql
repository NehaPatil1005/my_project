
{{config(materialized='table')}}
select
CUSTOMER_ID,
CUSTOMER_NAME,
CITY
from demo.public.PRODUCTs