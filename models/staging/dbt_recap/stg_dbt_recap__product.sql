with 

source as (

    select * from {{ source('dbt_recap', 'product') }}

),

renamed as (

    select
        products_id,
        purchse_price

    from source

)

select * from renamed
