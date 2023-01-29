SELECT product_id,
       NULLIF(name, '') AS name,
       TRY_TO_DOUBLE(price) AS price,
       TRY_TO_NUMBER(inventory) AS inventory

FROM {{ source('postgres', 'products') }}