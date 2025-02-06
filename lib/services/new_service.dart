import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewService {
  final Dio dio;

  NewService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?category=$category&apiKey=5e82e7dc398140a0b60e954603943613&country=us");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = <ArticleModel>[];
    for (var article in articles) {
      articlesList.add(ArticleModel.fromJson(article));
    }
    return articlesList;
  }
}
