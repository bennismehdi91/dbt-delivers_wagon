WITH sales AS (
    SELECT * FROM {{ref('stg_dbt_recap__sales')}}
)
SELECT 
    orders_id
    ,   date_date
    ,   SUM(revenue) AS revenue
    ,   SUM(quantity) AS quantity
FROM sales
GROUP BY orders_id, date_date