
// ignore: unused_import
import 'config.dart';
import 'http_request.dart';
import 'package:dou_ban/HomePage/Model/home_model.dart';

class HomeRequest {
  static Future<List<MovieItem>> requestMovieList(int start) async {
    // 1.构建URL
    final movieURL = "/j/new_search_subjects?sort=U&tags=电影&start=$start";

    // 2.发送网络请求获取结果
    final result = await HttpRequest.request(movieURL);
    final subjects = result["data"];

    // 3.将Map转成Model
    List<MovieItem> movies = [];
    for (var sub in subjects) {
      movies.add(MovieItem.fromMap(sub));
    }

    return movies;
  }
}