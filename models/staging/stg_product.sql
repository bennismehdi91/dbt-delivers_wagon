SELECT * FROM {{ source('dbt_recap', 'raw_gz_product') }}
