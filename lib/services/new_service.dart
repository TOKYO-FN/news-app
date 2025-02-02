import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewService {
  final Dio dio;

  NewService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    return await Future.delayed(
      Duration(seconds: 15),
      () async {
        Response response = await dio.get(
            "https://newsapi.org/v2/top-headlines?category=health&apiKey=a3e569f3623a45e4890c9d78634a25f7");
        Map<String, dynamic> jsonData = response.data;
        List<dynamic> articles = jsonData['articles'];
        List<ArticleModel> articlesList = <ArticleModel>[];
        for (var article in articles) {
          articlesList.add(
            ArticleModel(
              image: article['urlToImage'],
              title: article['title'],
              subtitle: article['content'],
            ),
          );
        }
        return articlesList;
      },
    );
  }
}
