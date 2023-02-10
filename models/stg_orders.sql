select
    id as order_id,
    user_id as customer_id,
    order_date,
    status
from `fast-nexus-277500.dbt_miwao.raw_orders`