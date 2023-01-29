
WITH promos AS (
    SELECT * 
    FROM {{ ref('stg_postgres__promos') }}
)
SELECT promo_id,
    status,
    discount AS discount_prct
FROM promos
