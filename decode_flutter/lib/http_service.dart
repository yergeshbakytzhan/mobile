import 'dart:convert';
import 'models.dart';
import 'package:http/http.dart';

class HttpService {
  final String postsURL = "http://37.18.30.124:5001/api/course/all/";
  final String postsURL2 =
      "http://37.18.30.124:5001/api/rating/activity?query=&page=1";
  final String postsURL3 =
      "http://37.18.30.124:5001/api/activity?query=&page=25";

  final String postsURL4 = "http://37.18.30.124:5001/api/lesson";

  Future<List<Course>> getCourses() async {
    Response res = await get(postsURL);
    print("Response status: ${res.statusCode}");
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Course> posts = body
          .map(
            (dynamic item) => Course.fromJson(item),
          )
          .toList();

      return posts;
    } else {
      throw "Can't get courses.";
    }
  }

  Future<List<Result>> getRating() async {
    Response res = await get(postsURL2);
    if (res.statusCode == 200) {
      var body = jsonDecode(res.body);
      List<dynamic> dbody = body['results'];
      List<Result> ratings = dbody
          .map(
            (dynamic item) => Result.fromJson(item),
          )
          .toList();

      return ratings;
    } else {
      throw "Can't get ratings.";
    }
  }

  Future<List<Activities>> getActivity() async {
    Response res = await get(postsURL3);
    print("Response status activity: ${res.statusCode}");
    if (res.statusCode == 200) {
      var body = jsonDecode(res.body);
      List<dynamic> dbody = body['activites'];

      List<Activities> activities = dbody
          .map(
            (dynamic item) => Activities.fromJson(item),
          )
          .toList();

      return activities;
    } else {
      throw "Can't get activities.";
    }
  }

  Future<List<Lessons>> getLessons() async {
    Response res = await get(postsURL4);
    print("Response status lessons: ${res.statusCode}");
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Lessons> posts = body
          .map(
            (dynamic item) => Lessons.fromJson(item),
          )
          .toList();

      return posts;
    } else {
      throw "Can't get courses.";
    }
  }

  Future<Lesson> getLesson(id) async {
    Response response =
        await get("http://37.18.30.124:5001/api/lesson/${id}/unauthorized");

    final jsonBody = jsonDecode(response.body);
    final dbody = jsonBody['lessons'];
    if (response.statusCode == 200) {
      Lesson lll = Lesson.fromJson(dbody);
      return lll;
    } else {
      throw "Can't get lesson.";
    }
  }
}
