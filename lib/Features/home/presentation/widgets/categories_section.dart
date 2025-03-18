import 'package:articles/Core/utils/app_styles.dart';
import 'package:articles/Features/home/presentation/widgets/categories_list.dart';
import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
    );
  }
}


