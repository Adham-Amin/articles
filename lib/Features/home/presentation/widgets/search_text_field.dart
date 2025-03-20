import 'package:articles/Core/utils/app_colors.dart';
import 'package:articles/Core/utils/app_styles.dart';
import 'package:articles/Features/home/presentation/manager/category_article_cubit/category_articles_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key, required this.category,
  });
  final String category;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        onChanged: (value) {
          BlocProvider.of<CategoryArticlesCubit>(context).fetchCategoryArticleByQuery(category: category, search: value);
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.orange, width: 2.0),
          ),
          prefixIcon: Icon(
            Icons.search,
          ),
          hintText: 'Search',
          hintStyle: AppStyles.textNormal14,
        ),
      ),
    );
  }
}