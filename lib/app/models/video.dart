// To parse this JSON data, do
//
//     final video = videoFromJson(jsonString);

import 'dart:convert';

Video videoFromJson(String str) => Video.fromJson(json.decode(str));

String videoToJson(Video data) => json.encode(data.toJson());

class Video {
  Video({
    this.id,
    this.results,
  });

  int? id;
  List<Result>? results;

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        id: json["id"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "results": List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    this.name,
    this.key,
    this.size,
    this.type,
    this.official,
    this.publishedAt,
    this.id,
  });

  String? name;
  String? key;
  int? size;
  Type? type;
  bool? official;
  DateTime? publishedAt;
  String? id;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        name: json["name"],
        key: json["key"],
        size: json["size"],
        official: json["official"],
        publishedAt: DateTime.parse(json["published_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "key": key,
        "size": size,
        "official": official,
        "published_at": publishedAt?.toIso8601String(),
        "id": id,
      };
}
