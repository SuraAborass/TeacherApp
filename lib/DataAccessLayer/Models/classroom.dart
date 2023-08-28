
class Classroom {
  final int id;
  final String grade;
  final String teacher;
  Classroom({
    required this.id,
    required this.grade,
    required this.teacher,
  });

  factory Classroom.fromMap(Map<String, dynamic> map) {
    return Classroom(
        id: map['id'] as int,
        grade: map['grade'] as String,
        teacher: map['teacher'] as String,
    );
  }
}