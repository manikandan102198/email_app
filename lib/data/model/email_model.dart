import 'dart:convert';

import '/domain/entities/email_entity.dart';

List<EmailModel> emailModelFromJson(String str) =>
    List<EmailModel>.from(json.decode(str).map((x) => EmailModel.fromJson(x)));

String emailModelToJson(List<EmailModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EmailModel extends EmailEntity {
  const EmailModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  }) : super(userId: userId, id: id, title: title, body: body);

  final int userId;
  final int id;
  final String title;
  final String body;

  factory EmailModel.fromJson(Map<String, dynamic> json) => EmailModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
