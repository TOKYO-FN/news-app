import 'package:flutter/material.dart';

import '../widgets/News_list_view.dart';
import '../widgets/categories_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15, top: 5),
            child: CategoriesListView(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return NewsTile();
              },
            ),
          ),
        ],
      ),
    );
  }
}
