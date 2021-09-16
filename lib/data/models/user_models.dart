import 'dart:convert';

class UserModel {
  final String name;
  final String? photourl;

  UserModel({required this.name, this.photourl});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map['name'], photourl: map['photourl']);
  }

  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));

  Map<String, dynamic> toMap() => {
        "name": name,
        "photourl": photourl,
      };
  String toJson() => jsonEncode(toMap());
}
