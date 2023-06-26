import 'dart:convert';
import 'package:teacher_app/DataAccessLayer/Models/student.dart';

class User {
  final int id;
  final String phone;
  final String name;
  final String image;
  final String subject;
  final String address;
  final String token;
  final List<Student> students;
  User({
    required this.id,
    required this.phone,
    required this.name,
    required this.image,
    required this.subject,
    required this.address,
    required this.token,
    required this.students
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'phone': phone,
      'image' : image,
      'subject' : subject,
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
      image: map['user']['image'] ?? '',
      subject: map['user']['subject'] ?? '',
      address: map['user']['address'] ?? '',
      students: List<Student>.from(
        (map['user']['students'] as List<dynamic>).map<Student>(
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
      image: map['image'] ?? '',
      subject: map['subject'] ?? '',
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
