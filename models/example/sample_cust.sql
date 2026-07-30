{{ config(materialized='table')}}

select
1 as EMP_ID,
'AVD' as EMP_NAME,
500000 as salary
