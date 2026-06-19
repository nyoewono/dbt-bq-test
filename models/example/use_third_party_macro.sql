WITH customer_order_product_price_banding AS (
    SELECT 
        o.customer_id,
        {{ group_price('price') }} AS price_banding
    FROM {{ ref("stg_orders") }} o
)

SELECT
    customer_id,
    {{ dbt_utils.pivot('price_banding', ['Bough_Invalid_Price_Item', 
                                         'Bought_Cheap_Price_Item', 
                                         'Bought_Medium_Price_Item', 
                                         'Bought_Expensive_Price_Item']) }}
FROM customer_order_product_price_banding
GROUP BY customer_id
