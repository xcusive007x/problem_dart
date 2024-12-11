import 'dart:io';

void main() {
  print('กรุณาใส่ตัวเลขจำนวนเต็ม:');
  String? input = stdin.readLineSync();

  if (input != null) {
    int? number = int.tryParse(input);
    if (number != null) {
      if (isPrime(number)) {
        print('$number เป็นเลขเฉพาะ');
      } else {
        print('$number ไม่เป็นเลขเฉพาะ');
      }
    } else {
      print('กรุณาใส่ตัวเลขที่ถูกต้อง');
    }
  } else {
    print('กรุณาใส่ข้อมูล');
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}