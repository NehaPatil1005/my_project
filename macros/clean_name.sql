{% macro clean_name(column_name) %}

CASE
WHEN {{ column_name }} IS NULL 
THEN 'UNKNOWN'
WHEN TRIM({{ column_name }}) = '' 
THEN 'UNKNOWN'
WHEN UPPER(({{ column_name }})) = 'NULL' 
THEN 'UNKNOWN'
ELSE {{ column_name }}
END

{% endmacro %}