with orders as (
    select
       O_ORDERKEY as order_id,
       O_CUSTKEY as customer_id,
       O_ORDERSTATUS as order_status,
       O_ORDERDATE as order_date,
       O_TOTALPRICE
    from demo.orders
)
select * from orders