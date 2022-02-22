import 'dart:convert';
import 'models.dart';
import 'package:http/http.dart';

class HttpService {
  final _endpoint = 'http://192.168.0.29:8000';

  Future<dynamic> getPosts() async {
    Response res = await get('$_endpoint/api/posts/');
    print("Response status: ${res.statusCode}");
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(utf8.decode(res.bodyBytes)).cast<Map<String, dynamic>>();
      // print(body.map((dynamic item) => print(item)));
      List posts = body
          .map(
            (dynamic item) => item,
      )
          .toList();
      return posts;
    } else {
      throw "Can't get posts.";
    }
  }
  Future<dynamic> getCategories() async {
    Response res = await get('$_endpoint/api/categories/');
    print("Response status: ${res.statusCode}");
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(utf8.decode(res.bodyBytes)).cast<Map<String, dynamic>>();
      // print(body.map((dynamic item) => print(item)));
      List categories = body
          .map(
            (dynamic item) => item,
      )
          .toList();
      return categories;
    } else {
      throw "Can't get posts.";
    }
  }

  Future<Posts> getPost(id) async {
    Response res = await get('$_endpoint/api/posts/${id}/');
    print("Response status: ${res.statusCode}");
    if (res.statusCode == 200) {
      var body = jsonDecode((utf8.decode(res.bodyBytes)));
      return Posts.fromJson(body);
    } else {
      throw "Can't get post.";
    }
  }

}