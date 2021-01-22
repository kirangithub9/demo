with customer as (

    select
        C_CUSTKEY as customer_id,
        C_NAME as customer_name      

    from demo.customer
)

select * from customer