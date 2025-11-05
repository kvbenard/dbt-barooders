with 

source as (

    select * from {{ source('barooders', 'product') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        body_html,
        created_at,
        handle,
        product_type,
        published_at,
        published_scope,
        status,
        template_suffix,
        title,
        updated_at,
        vendor

    from source

)

select * from renamed