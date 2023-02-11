With orders AS (select * from {{ source('dbt_miwao', 'stg_orders') }}),
customers AS (select * from {{ source('dbt_miwao', 'stg_customers') }})
select * from orders