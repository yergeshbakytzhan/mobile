import 'package:flutter/foundation.dart';

class Course {
  final int id;
  final String name;
  final String defaultImage;
  final String description;

  Course({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.defaultImage,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      defaultImage: json['defaultImage'] as String,
    );
  }
}

class StatusClass {
  final int id;
  final String status;

  StatusClass({
    @required this.id,
    @required this.status,
  });

  factory StatusClass.fromJson(Map<String, dynamic> json) {
    return StatusClass(
      id: json['id'] as int,
      status: json['status'] as String,
    );
  }
}

class Result {
  Result({
    this.id,
    this.name,
    this.avatar,
    this.totalComments,
    this.status,
  });

  int id;
  String name;
  String avatar;
  String totalComments;
  Status status;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        name: json["name"],
        avatar: json["avatar"],
        totalComments: json["totalComments"],
        status: Status.fromJson(json["Status"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "avatar": avatar,
        "totalComments": totalComments,
        "Status": status.toJson(),
      };
}

class Status {
  Status({
    this.id,
    this.status,
  });

  int id;
  String status;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        id: json["id"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "status": status,
      };
}

class User {
  User({
    this.id,
    this.name,
    this.avatar,
  });

  int id;
  String name;
  String avatar;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "avatar": avatar,
      };
}

class Activities {
  Activities({
    this.info,
    this.time,
    this.user,
  });
  String info;
  DateTime time;
  User user;

  factory Activities.fromJson(Map<String, dynamic> json) => Activities(
        info: json["Info"] == null ? null : json["Info"],
        time: DateTime.parse(json["Time"]),
        user: User.fromJson(json["User"]),
      );

  Map<String, dynamic> toJson() => {
        "Info": info == null ? null : info,
        "Time": time.toIso8601String(),
        "User": user.toJson(),
      };
}

class Level {
  Level({
    this.id,
    this.title,
    this.order,
    this.price,
    this.sectionId,
  });

  int id;
  String title;
  int order;
  int price;
  int sectionId;

  factory Level.fromJson(Map<String, dynamic> json) => Level(
        id: json["id"],
        title: json["title"],
        order: json["order"],
        price: json["price"],
        sectionId: json["sectionId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "order": order,
        "price": price,
        "sectionId": sectionId,
      };
}

class Lessons {
  Lessons({
    this.id,
    this.title,
    this.description,
    this.levelId,
    this.level,
  });

  int id;
  String title;
  String description;
  int levelId;
  Level level;

  factory Lessons.fromJson(Map<String, dynamic> json) => Lessons(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        levelId: json["levelId"],
        level: Level.fromJson(json["Level"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "levelId": levelId,
        "Level": level.toJson(),
      };
}

class Lesson {
  Lesson({
    this.id,
    this.title,
    this.numberOfLikes,
    this.numberOfDislikes,
    this.shortContent,
  });

  int id;
  String title;
  int numberOfLikes;
  int numberOfDislikes;
  String shortContent;

  factory Lesson.fromJson(Map<String, dynamic> json) => Lesson(
        id: json["id"],
        title: json["title"],
        numberOfLikes: json["number_of_likes"],
        numberOfDislikes: json["number_of_dislikes"],
        shortContent: json["short_content"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "number_of_likes": numberOfLikes,
        "number_of_dislikes": numberOfDislikes,
        "short_content": shortContent,
      };
}

class LessonResult {
  LessonResult({
    this.lessons,
    this.access,
  });

  Lessons lessons;
  bool access;

  factory LessonResult.fromJson(Map<String, dynamic> json) => LessonResult(
        lessons: Lessons.fromJson(json["lessons"]),
        access: json["access"],
      );

  Map<String, dynamic> toJson() => {
        "lessons": lessons.toJson(),
        "access": access,
      };
}
