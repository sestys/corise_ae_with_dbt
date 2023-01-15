SELECT product_id,
       name,
       TRY_TO_DOUBLE(price) AS price,
       TRY_TO_NUMBER(inventory) AS inventory

FROM {{ source('postgres', 'products') }}