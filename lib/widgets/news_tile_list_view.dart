import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articleModelList});
  final List<ArticleModel> articleModelList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return NewsTile(
            articleModel: articleModelList[index],
          );
        },
        childCount: articleModelList.length,
      ),
    );
  }
}
