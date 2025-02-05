import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.info,
              ),
              onPressed: () => {},
            ),
          ],
          centerTitle: true,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "News",
              ),
              const Text(
                "Cloud",
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: CustomScrollView(
            slivers: [
              NewsListViewBuilder(
                category: category,
              ),
            ],
          ),
        ));
  }
}
