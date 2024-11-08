with 

source as (

    select * from {{ source('dbt_recap', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id,
        revenue,
        quantity

    from source

)

select * from renamed