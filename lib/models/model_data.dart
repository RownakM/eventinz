import 'dart:convert';

BaseText baseTextFromJson(String str) => BaseText.fromJson(json.decode(str));

String baseTextToJson(BaseText data) => json.encode(data.toJson());

class BaseText {
  BaseText({
    this.status,
  });

  int? status;

  factory BaseText.fromJson(Map<String, dynamic> json) => BaseText(
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
      };
}
