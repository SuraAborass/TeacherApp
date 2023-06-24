
class AbsentStudent {
  late final List<int> ids;

  AbsentStudent({
    required this.ids,

  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ids,

    };
  }

  factory AbsentStudent.fromMap(Map<String, dynamic> map) {
    return AbsentStudent(
        ids: map['ids'],
    );
  }

}
