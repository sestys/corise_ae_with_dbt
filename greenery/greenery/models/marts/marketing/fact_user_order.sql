
WITH orders AS (
    SELECT *
    FROM {{ ref('stg_postgres__orders')}}
), order_items AS (
    SELECT *
    FROM {{ ref('stg_postgres__order_items') }}
), order_items_count AS (
    SELECT order_id,
           COUNT(DISTINCT product_id) AS n_unique_products,
           SUM(quantity) AS total_order_size
    FROM order_items
    GROUP BY order_id

)
SELECT orders.order_id,
       user_id,
       promo_id,
       created_at,
       n_unique_products,
       total_order_size,
       order_cost,
       shipping_cost,
       tracking_id,
       shipping_service,
       estimated_delivery_at,
       delivered_at,
       status AS delivery_status
FROM orders
LEFT JOIN order_items_count ON orders.order_id = order_items_count.order_id
