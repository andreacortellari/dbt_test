SELECT
    id AS payment_id,
    orderid AS order_id,
    paymentmethod AS payment_method,
    status AS payment_status,
    amount,
    created,
    _batched_at
FROM `dbt-tutorial`.stripe.payment