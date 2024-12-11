import 'dart:io';

void main() {
  print("กรุณากรอกประโยค:");
  String input = stdin.readLineSync() ?? "";

  int totalWords = getTotalWords(input);
  int uniqueWords = getUniqueWords(input);

  print("จำนวนคำทั้งหมด: $totalWords");
  print("จำนวนคำที่ไม่ซ้ำ: $uniqueWords");
}

int getTotalWords(String sentence) {
  return sentence.trim().split(RegExp(r'\s+')).length;
}

int getUniqueWords(String sentence) {
  var words = sentence.trim().split(RegExp(r'\s+'));
  return words.toSet().length;
}
