
SELECT order_id,
       user_id,
       NULLIF(promo_id, '') AS promo_id,
       NULLIF(address_id, '') AS address_id,
       TRY_TO_TIMESTAMP(created_at) AS created_at,
       TRY_TO_DOUBLE(order_cost) AS order_cost,
       TRY_TO_DOUBLE(shipping_cost) AS shipping_cost,
       NULLIF(tracking_id, '') AS tracking_id,
       NULLIF(shipping_service, '') AS shipping_service,
       TRY_TO_TIMESTAMP(estimated_delivery_at) AS estimated_delivery_at,
       TRY_TO_TIMESTAMP(delivered_at) AS delivered_at,
       status

FROM {{ source('postgres', 'orders') }}