SELECT NULLIF(user_id, '') AS user_id,
       NULLIF(first_name, '') AS first_name,
       NULLIF(last_name, '') AS last_name,
       NULLIF(email, '') AS email,
       NULLIF(phone_number, '') AS phone_number,
       TRY_TO_TIMESTAMP(created_at) AS created_at,
       TRY_TO_TIMESTAMP(updated_at) AS updated_at,
       NULLIF(address_id, '') AS address_id

FROM {{ source('postgres', 'users')}}