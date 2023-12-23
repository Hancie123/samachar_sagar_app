// To parse this JSON data, do
//
//     final getNewsModel = getNewsModelFromMap(jsonString);

import 'dart:convert';

GetNewsModel getNewsModelFromMap(String str) => GetNewsModel.fromMap(json.decode(str));

String getNewsModelToMap(GetNewsModel data) => json.encode(data.toMap());

class GetNewsModel {
  List<Datum>? data;

  GetNewsModel({
    this.data,
  });

  factory GetNewsModel.fromMap(Map<String, dynamic> json) => GetNewsModel(
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Datum {
  int? id;
  int? newsCategoryId;
  String? title;
  String? slug;
  String? userId;
  String? excerpt;
  String? description;
  String? status;
  String? newsImage;
  String? createdAt;

  Datum({
    this.id,
    this.newsCategoryId,
    this.title,
    this.slug,
    this.userId,
    this.excerpt,
    this.description,
    this.status,
    this.newsImage,
    this.createdAt,
  });

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json["id"],
        newsCategoryId: json["news_category_id"],
        title: json["title"],
        slug: json["slug"],
        userId: json["user_id"],
        excerpt: json["excerpt"],
        description: json["description"],
        status: json["status"],
        newsImage: json["news_image"],
        createdAt: json["created_at"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "news_category_id": newsCategoryId,
        "title": title,
        "slug": slug,
        "user_id": userId,
        "excerpt": excerpt,
        "description": description,
        "status": status,
        "news_image": newsImage,
        "created_at": createdAt,
      };
}
