curl --location --request POST 'https://api.juspay.in/session' \
    --header 'x-merchantid: yourMerchantId' \
    --header 'Authorization: Basic base64encodedkey==' \
    --header 'Content-Type: application/json' \
    --data-raw '{
    "amount":"10.00",
    "order_id":"yourUniqueOrderId",
    "customer_id":"yourUniqueCustId",
    "customer_phone":"customer_phone",
    "customer_email":"customer_email",
    "payment_page_client_id":"yourclientid",
    "return_url": "https://shop.merchant.com",
    "action":"enach",
    "service":"in.juspay.ec",
    "options.create_mandate":"REQUIRED",
    "mandate.max_amount":"1000.00",
    "mandate.start_date":"1644420442",
    "mandate.end_date":"1646234827"
}'