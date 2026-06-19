{% macro group_price(price) %}

    {% set cheap_price = 20 %}
    {% set medium_price = 40 %}
    {% set expensive_price = 60 %}
    
    {% if price is none or price <=0 %}
        'Bough_Invalid_Price_Item'
    {% elif price > 0 and price <= cheap_price %}
        'Bought_Cheap_Price_Item'
    {% elif price > cheap_price and price <= medium_price %}
        'Bought_Medium_Price_Item'
    {% else %} 
        'Bought_Expensive_Price_Item'
    {% endif %}

{% endmacro %}