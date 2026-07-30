{{ config(materialized='table')}}

select
    EMP_ID,
    {{lowercase('EMP_NAME')}} as EMP_NAME,
    {{lowercase('DEPARTMENT')}} as department,
    {{lowercase('SALARY')}} as salary
    FROM {{ source('raw', 'EMPLOYEE_SOURCE') }}
    