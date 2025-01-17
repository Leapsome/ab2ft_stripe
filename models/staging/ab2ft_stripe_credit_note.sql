SELECT
    cast({{ json_extract_scalar ("_airbyte_data", ['livemode']) }} AS boolean) AS livemode,
    NULL AS id,
    NULL AS amount,
    NULL AS created,
    NULL AS currency,
    NULL AS discount_amount,
    NULL AS subtotal,
    NULL AS total,
    NULL AS memo,
    NULL AS metadata,
    NULL AS number,
    NULL AS pdf,
    NULL AS reason,
    NULL AS status,
    NULL AS type,
    NULL AS voided_at,
    NULL AS customer_balance_transaction,
    NULL AS invoice_id,
    NULL AS refund_id
FROM {{ var('airbyte_raw_customer_balance_transactions') }}