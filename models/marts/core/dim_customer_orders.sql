with customer as (
    select * from {{ ref('stg_customer') }}
),

orders as (
    select * from {{ ref('stg_orders') }}
),

customer_orders as (

    select
       customer_id,
       order_id,
       order_status,
       order_date,
       sum(O_TOTALPRICE) as total_price
from orders

    group by 1,2,3,4

),

final as (
    select
       customer.customer_id,
       customer.customer_name,
       customer_orders.order_id,
       customer_orders.order_status,
       customer_orders.order_date,
       coalesce(customer_orders.total_price,0) as total_price
    from customer

    join customer_orders using (customer_id)
)
select * from final