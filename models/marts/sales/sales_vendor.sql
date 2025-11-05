select 
    order_line.vendor,
    sum(order_line.total_amount) as total_amount
from {{ ref('int_order_line_full') }} as order_line
group by all