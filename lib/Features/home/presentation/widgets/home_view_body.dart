
import 'package:articles/Features/home/presentation/widgets/articles_list.dart';
import 'package:articles/Features/home/presentation/widgets/categories_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CategoriesSection(),
        ArticlesList(),
      ],
    );
  }
}