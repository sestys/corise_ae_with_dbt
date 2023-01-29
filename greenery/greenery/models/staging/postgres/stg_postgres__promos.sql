SELECT promo_id,
       NULLIF(status, '') AS status,
       TRY_TO_NUMBER(discount) AS discount

FROM {{ source('postgres', 'promos') }}