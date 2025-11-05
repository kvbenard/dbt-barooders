with 

source as (

    select * from {{ source('barooders', 'order') }}

),

renamed as (

    select
        id,
        cancel_reason,
        cancelled_at,
        cart_token,
        checkout_token,
        client_details_user_agent,
        closed_at,
        confirmed AS is_confirmed,
        created_at,
        currency,
        customer_id,
        customer_locale,
        device_id,
        financial_status,
        fulfillment_status,
        landing_site_base_url,
        landing_site_ref,
        location_id,
        name,
        order_number,
        order_status_url,
        original_total_duties_set,
        payment_gateway_names,
        presentment_currency,
        processed_at,
        processing_method,
        reference,
        referring_site,
        source_identifier,
        source_name,
        source_url,
        subtotal_price,
        subtotal_price_set,
        taxes_included,
        test,
        token,
        updated_at,
        user_id,
        checkout_id

    from source

)

select * from renamed