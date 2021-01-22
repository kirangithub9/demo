select
      order_id,
      sum(O_TOTALPRICE) as total_price
    from
    {{ ref ('stg_orders') }}
    group by 1
    having not(total_price>=0 )