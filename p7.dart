import 'dart:io';

void main() {
  // rateค่าเงิน
  Map<String, double> exchangeRates = {
    'USD': 0.0286,
    'EUR': 0.026,
    'JPY': 4.03,
    'RUB': 2.54,
    'HKD': 0.22,
    'SGD': 0.038,
    'CNY': 0.19,
  };

  print('Enter amount in THB: ');
  double amount = double.parse(stdin.readLineSync()!);

  print('Enter target currency (USD, EUR, JPY, RUB, HKD, SGD, CNY): ');
  String currency = stdin.readLineSync()!;
  currency = currency.toUpperCase();

  if (exchangeRates.containsKey(currency)) {
    double convertedAmount = convertCurrency(amount, currency, exchangeRates);
    print('Converted Amount: $convertedAmount $currency');
  } else {
    print('Currency not supported.');
  }
}

double convertCurrency(double amount, String currency, Map<String, double> exchangeRates) {
  double rate = exchangeRates[currency]!;
  return amount * rate;
}
