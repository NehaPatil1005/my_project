{{ config(
    materialized='table',
    
    
)}}
with EMP_CTE as (
    select 
    EMP_ID,
    EMP_NAME,
    upper(DEPARTMENT) AS DEPARTMENT,
    SALARY,
    ROW_NUMBER()OVER
         (PARTITION BY EMP_ID
         ORDER BY SALARY DESC
         )AS RN
    FROM {{source('raw', 'EMPLOYEE_SOURCE')}}
    
    where EMP_ID IS NOT NULL
        AND EMP_NAME IS NOT NULL
        AND TRIM(EMP_NAME )<> ''
        AND UPPER(TRIM(EMP_NAME))<>'NULL'
    )

    SELECT EMP_ID,
           EMP_NAME,
           DEPARTMENT,
           SALARY
    FROM EMP_CTE
    WHERE RN = 1

    