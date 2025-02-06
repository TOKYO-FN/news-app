class ArticleModel {
  const ArticleModel({
    this.url,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String? image;
  final String title;
  final String? subtitle;
  final String? url;

  factory ArticleModel.fromJson(article) {
    return ArticleModel(
      image: article['urlToImage'],
      title: article['title'],
      subtitle: article['description'],
      url: article['url'],
    );
  }
}
