void main() {
  List<Map<String, String>> students = [
    {'name': 'Alice', 'grade': 'A'},
    {'name': 'Bob', 'grade': 'B'},
    {'name': 'Charlie', 'grade': 'A'}
  ];

  Map<String, List<String>> groupedStudents = groupStudentsByGrade(students);
  print(groupedStudents);
}

Map<String, List<String>> groupStudentsByGrade(List<Map<String, String>> students) {
  Map<String, List<String>> gradeGroups = {};

  for (var student in students) {
    String studentName = student['name'] ?? '';
    String studentGrade = student['grade'] ?? '';

    if (!gradeGroups.containsKey(studentGrade)) {
      gradeGroups[studentGrade] = [];
    }
    
    gradeGroups[studentGrade]!.add(studentName);
  }

  return gradeGroups;
}
