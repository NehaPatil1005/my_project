{{ config(materiallized='table',
post_hooks="
insert into demo.public.ETL_AUDIT
VALUES ('employee_clean',CURRENT_TIMESTAMP()
)"

)}}

SELECT * FROM {{ source('raw','EMPLOYEE_SOURCE') }}