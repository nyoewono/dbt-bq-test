-- Test to check if there are no orders for today

SELECT COUNT(*) as num_orders_today
FROM {{ref('stg_orders')}}
WHERE DATE(order_date) = CURRENT_DATE()
HAVING COUNT(*)>0