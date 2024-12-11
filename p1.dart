import 'dart:io';
void main() {
  print("ใส่จำนวนสินค้า");
     int? amount = int.parse(stdin.readLineSync()!);
  print("ราคาต่อหน่วย");
     int? price = int.parse(stdin.readLineSync()!);
    var discount = 0.0;
    if (amount >= 5) {
      discount = 0.1;// 0.1 = 10%
    } else if (amount > 10) {
      discount = 0.2;// 0.2 = 20%
    }
    print("ราคารวมสินค้าที่ยังไม่รวมส่วนลด = ${price*amount} บาท \nส่วนลด = ${discount * 100}% \nราคารวมส่วนลดแล้ว = ${(price*amount) -(discount*100)} บาท");
}
