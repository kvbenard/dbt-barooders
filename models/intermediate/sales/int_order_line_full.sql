select
    order_lines.id,
    order_lines.price,
    order_lines.quantity,
    orders.customer_id,
    orders.created_at,
    products.vendor,
    products.title,
    order_lines.price * order_lines.quantity as total_amount
from {{ ref('stg_barooders__order_line') }} as order_lines
left join {{ ref('stg_barooders__order') }} as orders
    on order_lines.order_id = orders.id
left join {{ ref('stg_barooders__product') }} as products
    on order_lines.product_id = products.id