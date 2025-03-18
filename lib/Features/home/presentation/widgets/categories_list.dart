import 'package:articles/Features/home/data/category_model.dart';
import 'package:articles/Features/home/presentation/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => CategoryItem(category: categories[index],),
      ),
    );
  }
}