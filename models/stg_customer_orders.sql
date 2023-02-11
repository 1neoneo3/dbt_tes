select
    customer_id,
    min(order_date) as first_order_date, -- 最初のオーダー日
    max(order_date) as most_recent_order_date, -- 直近のオーダー日
    count(order_id) as number_of_orders
from {{ source('dbt_miwao', 'stg_orders') }}
group by 1