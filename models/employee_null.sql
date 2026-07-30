select 
   EMP_ID,
   {{ clean_name('EMP_NAME') }} as EMP_NAME,
   {{ clean_name('DEPARTMENT') }} as department,
   salary
   from {{ source('raw', 'EMPLOYEE_SOURCE') }}