SELECT event_id,
       session_id,
       user_id,
       page_url,
       TRY_TO_TIMESTAMP(created_at) AS created_at,
       event_type,
       order_id,
       product_id

FROM {{ source('postgres', 'events') }}