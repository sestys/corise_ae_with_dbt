
WITH products AS (
    SELECT *
    FROM {{ ref('stg_postgres__products') }}    
)

SELECT product_id,
       name AS product_name,
       price AS price_usd,
       inventory
FROM products
