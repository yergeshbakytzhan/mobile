import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'dart:convert';



class Posts {
  Posts({
    this.id,
    this.title,
    this.user,
    this.city,
    this.description,
    this.price,
    this.exchange,
    this.auction,
    this.delivery,
    this.category,
    this.isApproved,
    this.date,
  });

  int id;
  String title;
  User user;
  City city;
  String description;
  String price;
  bool exchange;
  bool auction;
  bool delivery;
  Category category;
  DateTime date;
  bool isApproved;

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    id: json["id"],
    title: json["title"],
    user: User.fromJson(json['user']),
    city: City.fromJson(json["city"]),
    description: json["description"],
    price: json["price"],
    exchange: json["exchange"],
    auction: json["auction"],
    delivery: json["delivery"],
    category: Category.fromJson(json["category"]),
    date:  DateTime.parse(json["date"]),
    isApproved: json["isApproved"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "user": user.toJson(),
    "city": city.toJson(),
    "description": description,
    "price": price,
    "exchange": exchange,
    "auction": auction,
    "delivery": delivery,
    "category": category.toJson(),
    "date": date.toIso8601String(),
    "isApproved": isApproved,
  };
}

class Category{
  Category({
    this.id,
    this.name,
    this.slug,
  });

  int id;
  String name;
  String slug;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
    slug: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
  };
}

class City{
  City({
    this.id,
    this.name,
    this.slug,
  });

  int id;
  String name;
  String slug;

  factory City.fromJson(Map<String, dynamic> json) => City(
    id: json["id"],
    name: json["name"],
    slug: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
  };
}
class User{
  User({
    this.id,
    this.email,
    this.image,
    this.phone,
    this.city,
    this.date,
  });

  int id;
  String email;
  String image;
  String phone;
  City city;
  DateTime date;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    email: json["email"],
    image: json["image"],
    phone: json["phone"],
    city: City.fromJson(json['city']),
    date: json["date"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "image": image,
    "phone": phone,
    "city": city.toJson(),
    "date": date.toIso8601String(),
  };
}
