select
    order_lines.id,
    order_lines.price,
    order_lines.quantity,
    orders.customer_id
    orders.created_at,
    products.vendor,
    products.title
from le-wagon-386118.barooders.order_line as order_lines
left join le-wagon-386118.barooders.order as orders
    on order_lines.order_id = orders.id
left join le-wagon-386118.barooders.product as products
    on order_lines.product_id = products.id