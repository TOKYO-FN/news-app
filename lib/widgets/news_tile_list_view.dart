import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/new_service.dart';

import 'news_tile.dart';

class NewsList extends StatefulWidget {
  const NewsList({
    super.key,
  });

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  List<ArticleModel> articleModelList = [];

  Future<void> getIt() async {
    articleModelList = await NewService(Dio()).getNews();
  }

  @override
  void initState() {
    super.initState();
    getIt();
  }

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
