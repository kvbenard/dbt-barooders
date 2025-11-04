with 

source as (

    select * from {{ source('barooders', 'order_line') }}

),

renamed as (

    select
        id,
        order_id,
        name,
        price,
        product_id,
        quantity,
        vendor

    from source

)

select * from renamed