--data-raw '{
    "order_id": "testing-order-one",
    "amount": "1.0",
    "customer_id": "testing-customer-one",
    "customer_email": "test@mail.com",
    "customer_phone": "9876543210",
    "payment_page_client_id": "your_client_id",
    "action": "paymentPage",
    "return_url": "https://shop.merchant.com",
    "description": "Complete your payment",
    "first_name": "John",
    "last_name": "wick",
// Add payment locking payload given below to the payload used for creating an order    
    "payment_filter": {
       "allowDefaultOptions": true,
       "options": [{
               "paymentMethodType": "UPI",
               "enable": true,
               "upiFilters": [{
                       "upiType": "COLLECT",
               "enable": false,     
                       "upiMethods": ["@ybl", "@okhdfcbank"]
                   },
                   {
                       "upiType": "INTENT",
                       "enable": false,
                       "upiMethods": ["PHONEPE", "GPAY", "PAYTM"]
                   }]
               }
           ]
       }
}'