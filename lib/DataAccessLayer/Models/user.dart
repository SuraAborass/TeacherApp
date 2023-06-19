import 'dart:convert';
import 'package:teacher_app/DataAccessLayer/Models/student.dart';

class User {
  final int id;
  final String phone;
  final String name;
  final String address;
  final String token;
  final List<Student> students;
  User({
    required this.id,
    required this.phone,
    required this.name,
    required this.address,
    required this.token,
    required this.students
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'phone': phone,
      'name': name,
      'address' : address,
      'token': token,
      'students' : students
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['user']['id']?.toInt() ?? 0,
      phone: map['user']['phone'] ?? '',
      name: map['user']['name'] ?? '',
      address: map['user']['address'] ?? '',
      students: List<Student>.from(
        (map['students'] as List<dynamic>).map<Student>(
              (l) => Student.fromMap(l as Map<String, dynamic>),
        ),
      ),
      token: map['token'] ?? '',

    );
  }
  factory User.fromBoxMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      phone: map['phone'] ?? '',
      name: map['name'] ?? '',
      students: List<Student>.from(
        (map['students'] ?? []).map<Student>(
              (l) => Student.fromMap(l as Map<String, dynamic>),
        ) ,
      ),
      address: map['address'] ?? '',
      token: map['token'] ?? '',

    );
  }
  String toJson() => json.encode(toMap());
  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
