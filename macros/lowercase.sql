{% macro lowercase(column_name)%}
Lower({{ column_name}})
{% endmacro %}