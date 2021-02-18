import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.id,
    this.email,
    this.token,
  });

  String id;
  String email;
  String token;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        email: json["email"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "token": token,
      };
}
