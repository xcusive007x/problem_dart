void main() {
  var numbers = [10, 24, 35, 65, 12];
  var min = findMin(numbers);
  var max = findMax(numbers);
  var avg = calculateAverage(numbers);

  print('ค่าที่ต่ำสุดคือ : $min');
  print('ค่าที่สูงสุดคือ : $max');
  print('ค่าเฉลี่ยคือ : $avg');
}

int findMin(List<int> numbers) {
  return numbers.reduce((current, next) => current < next ? current : next);
}

int findMax(List<int> numbers) {
  return numbers.reduce((current, next) => current > next ? current : next);
}

double calculateAverage(List<int> numbers) {
  var total = numbers.fold(0, (sum, number) => sum + number);
  return total / numbers.length;
}
