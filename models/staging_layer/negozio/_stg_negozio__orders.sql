select
    id as order_id,
    user_id as customer_id,
    order_date,
    status
FROM {{ source('negozio', 'orders') }}
ORDER BY order_id