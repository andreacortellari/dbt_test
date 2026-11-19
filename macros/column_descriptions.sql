{% macro column_description(column_name) %}

    {% if column_name == 'customer_id' %}
        {{ return("This is a unique identifier for the customer") }}

    {% elif column_name == 'first_name' %}
        {{ return("This is the first name of the customer") }}

    {% elif column_name == 'last_name' %}
        {{ return("This is the last name of the customer") }}

    {% else %}
        {{ return("") }}

    {% endif %}

{% endmacro %}