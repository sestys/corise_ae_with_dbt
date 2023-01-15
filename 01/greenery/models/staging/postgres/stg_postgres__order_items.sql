
SELECT order_id,
       product_id,
       TRY_TO_NUMBER(quantity) AS quantity

FROM {{ source('postgres', 'order_items') }}