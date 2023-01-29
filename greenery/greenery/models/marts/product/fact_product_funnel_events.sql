

WITH events AS (
    SELECT *
    FROM {{ ref('stg_postgres__events') }}
    
)
SELECT event_id,
       session_id,
       user_id,
       page_url,
       created_at,
       event_type,
       order_id,
       product_id
FROM events
WHERE event_type IN ('page_view', 'add_to_cart', 'checkout')