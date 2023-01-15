SELECT NULLIF(address_id, '') AS address_id,
       NULLIF(address, '') AS address,
       TRY_TO_NUMBER(zipcode) AS zipcode,
       NULLIF(state, '') AS state,
       NULLIF(country, '') AS country
FROM {{ source('postgres', 'addresses') }}