import 'package:flutter/material.dart';
import 'package:news_app/models/category_card_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categoryModels = <CategoryModel>[
    CategoryModel(
      category: 'sport',
      image: 'assets/sports.avif',
      categoryName: 'Sports',
    ),
    CategoryModel(
      category: 'science',
      image: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      category: 'health',
      image: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      category: 'entertainment',
      image: 'assets/entertainment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      category: 'technology',
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      category: 'business',
      image: 'assets/business.avif',
      categoryName: 'Business',
    ),
    CategoryModel(
      category: 'general',
      image: 'assets/general.avif',
      categoryName: 'General',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: categoryModels.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            categoryModel: categoryModels[index],
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
