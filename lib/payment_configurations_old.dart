// payment_configurations.dart

const String defaultGooglePay = '''
{
  "provider": "google_pay",
  "data": {
    "environment": "TEST",
    "apiVersion": 2,
    "apiVersionMinor": 0,
    "allowedPaymentMethods": [
      {
        "type": "CARD",
        "parameters": {
          "allowedAuthMethods": ["PAN_ONLY", "CRYPTOGRAM_3DS"],
          "allowedCardNetworks": ["AMEX", "DISCOVER", "JCB", "MASTERCARD", "VISA"]
        },
        "tokenizationSpecification": {
          "type": "PAYMENT_GATEWAY",
          "parameters": {
            "gateway": "example",
            "gatewayMerchantId": "exampleGatewayMerchantId"
          }
        }
      }
    ],
    "merchantInfo": {
      "merchantId": "01234567890123456789",
      "merchantName": "Example Merchant"
    },
    "transactionInfo": {
      "totalPriceStatus": "FINAL",
      "totalPriceLabel": "Total",
      "totalPrice": "99.99",
      "currencyCode": "USD",
      "countryCode": "US"
    }
  }
}
''';

const String defaultApplePay = '''
{
  "provider": "apple_pay",
  "data": {
    "merchantIdentifier": "merchant.com.example",
    "displayName": "Example Merchant",
    "merchantCapabilities": ["3DS", "EMV"],
    "supportedNetworks": ["amex", "discover", "masterCard", "visa"],
    "countryCode": "US",
    "currencyCode": "USD",
    "paymentSummaryItems": [
      {
        "label": "Total",
        "amount": "99.99"
      }
    ]
  }
}
''';
