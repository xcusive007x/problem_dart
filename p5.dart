void main() {
  Map<String, int> scores = {'Alice': 95, 'Bob': 85, 'Charlie': 90};
  String highestScorer = getHighestScorer(scores);
  print('ผู้ทำคะแนนสูงสุด: $highestScorer');
}

String getHighestScorer(Map<String, int> scores) {
  String topScorer = '';
  int highestScore = 0;

  scores.forEach((name, score) {
    if (score > highestScore) {
      highestScore = score;
      topScorer = name;
    }
  });

  return '$topScorer ทำคะแนนได้ $highestScore คะแนน';
}
