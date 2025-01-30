import 'package:flutter/material.dart';

import '../widgets/categories_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          SizedBox(
            height: 100,
            child: CategoriesListView(),
          ),
          Expanded(
            child: ListView(
              children: [
                NewsTile(),
                NewsTile(),
                NewsTile(),
                NewsTile(),
                NewsTile(),
                NewsTile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset('assets/business.avif'),
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and"
            " typesetting industry. Lorem Ipsum has been the"
            " industry's standard dummy text ever since the 1500s,"
            " when an unknown printer took a galley",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and"
            " typesetting industry. Lorem Ipsum has been the"
            " industry's standard dummy text ever since the 1500s,"
            " when an unknown printer took a galley",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w900),
          )
        ],
      ),
    );
  }
}

//,
