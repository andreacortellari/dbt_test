SELECT
    id AS payment_id,
    orderid AS order_id,
    paymentmethod AS payment_method,
    status AS payment_status,
    payment_amount,
    payment_created,
    _batched_at
FROM `dbt-tutorial`.stripe.payment
ORDER BY order_id