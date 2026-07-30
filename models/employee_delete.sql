{{ config(
    materialized='table',
    
    pre_hook="delete from demo.public.EMPLOYEE_CLEAN"
)}}

SELECT *
FROM {{ source('raw','EMPLOYEE_SOURCE')}}