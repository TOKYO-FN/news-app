import 'package:flutter/material.dart';
import 'package:news_app/models/category_card_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
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
        child: Text(
          categoryModel.categoryName,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
