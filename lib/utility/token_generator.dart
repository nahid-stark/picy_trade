import 'dart:math';

String generatePurchaseToken() {
  const letters = 'abcdefghijklmnopqrstuvwxyz';
  const numbers = '123456789';
  final random = Random();
  final buffer = StringBuffer();

  for (int i = 0; i < 5; i++) {
    buffer.write(letters[random.nextInt(letters.length)]);
    buffer.write(numbers[random.nextInt(numbers.length)]);
  }
  return buffer.toString();
}
