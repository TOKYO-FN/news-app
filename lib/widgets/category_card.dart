import 'package:flutter/material.dart';
import 'package:news_app/models/category_card_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: categoryModel.category,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          alignment: Alignment.center,
          height: 100,
          width: 170,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(categoryModel.image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
