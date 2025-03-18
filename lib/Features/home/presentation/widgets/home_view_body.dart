import 'package:articles/Core/utils/app_styles.dart';
import 'package:articles/Features/home/presentation/widgets/article_item.dart';
import 'package:articles/Features/home/presentation/widgets/categories_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CategoriesList(),
              SizedBox(
                height: 16,
              ),
              Text(
                'Top Headlines',
                style: AppStyles.textBlod24,
              ),
            ],
          ),
        ),
        SliverList.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ArticleItem(),
          ),
        ),
      ],
    );
  }
}





