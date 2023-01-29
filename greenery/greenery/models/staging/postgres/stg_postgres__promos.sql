SELECT promo_id,
       status,
       TRY_TO_NUMBER(discount) AS discount

FROM {{ source('postgres', 'promos') }}