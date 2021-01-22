with countries as (
    select
    country_id,
    country_code,
    region_id
    from demo.countries
)

select * from countries