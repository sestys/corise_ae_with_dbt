
WITH users AS (
    SELECT *
    FROM {{ ref('stg_postgres__users') }}
)
SELECT user_id,
       created_at,
       updated_at
FROM users
