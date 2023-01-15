SELECT address_id,
       address,
       TRY_TO_NUMBER(zipcode) AS zipcode,
       state,
       country
FROM {{ source('postgres', 'addresses') }}