import 'dart:convert';

class UserModel {
  final String name;
  final String? photourl;
  final String mail;

  UserModel({
    required this.name,
    this.photourl,
    required this.mail,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        name: map['name'], photourl: map['photourl'], mail: map['email']);
  }

  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));

  Map<String, dynamic> toMap() => {
        "name": name,
        "photourl": photourl,
        "email": photourl,
      };
  String toJson() => jsonEncode(toMap());
}
