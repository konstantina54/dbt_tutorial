select
    id as payment_id,
    order_id as order_id,
    payment_method,
    amount / 100 as amount

from {{ source('stripe', 'raw_payments') }}