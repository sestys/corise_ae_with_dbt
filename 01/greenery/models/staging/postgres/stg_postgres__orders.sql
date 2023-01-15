
SELECT order_id,
       user_id,
       promo_id,
       address_id,
       TRY_TO_TIMESTAMP(created_at) AS created_at,
       TRY_TO_DOUBLE(order_cost) AS order_cost,
       TRY_TO_DOUBLE(shipping_cost) AS shipping_cost,
       tracking_id,
       shipping_service,
       TRY_TO_TIMESTAMP(estimated_delivery_at) AS estimated_delivery_at,
       TRY_TO_TIMESTAMP(delivered_at) AS delivered_at,
       status

FROM {{ source('postgres', 'orders') }}