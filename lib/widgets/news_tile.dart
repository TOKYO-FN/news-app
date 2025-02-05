import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 21),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: articleModel.image != null
                ? CachedNetworkImage(
                    useOldImageOnUrlChange: true,
                    imageUrl: articleModel.image!,
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        Icon(Icons.error, color: Colors.red),
                  )
                : Image.asset('assets/error.jpeg'),
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            articleModel.subtitle ?? " ",
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
