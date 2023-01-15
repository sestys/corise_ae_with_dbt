SELECT user_id,
       first_name,
       last_name,
       email,
       phone_number,
       TRY_TO_TIMESTAMP(created_at) AS created_at,
       TRY_TO_TIMESTAMP(updated_at) AS updated_at,
       address_id

FROM {{ source('postgres', 'users') }}