WITH
payments AS (
    SELECT 
        order_id, 
        SUM(payment_amount) AS payment_amount 
    FROM {{ ref('_stg_stripe__payments') }}
    WHERE payment_status = 'success'
    GROUP BY 1
)

SELECT
    order_id,
    customer_id,
    payment_amount
FROM {{ ref('_stg_negozio__orders') }}
LEFT JOIN payments USING (order_id)
ORDER BY order_id