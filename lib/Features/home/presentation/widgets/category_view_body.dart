import 'package:articles/Core/widgets/custom_error.dart';
import 'package:articles/Core/widgets/custom_loading.dart';
import 'package:articles/Features/home/presentation/manager/category_article_cubit/category_articles_cubit.dart';
import 'package:articles/Core/widgets/category_articles.dart';
import 'package:articles/Features/home/presentation/widgets/custom_filter.dart';
import 'package:articles/Core/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryViewBody extends StatefulWidget {
  const CategoryViewBody({super.key, required this.category});

  final String category;

  @override
  State<CategoryViewBody> createState() => _CategoryViewBodyState();
}

class _CategoryViewBodyState extends State<CategoryViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CategoryArticlesCubit>(context)
        .fetchCategoryArticle(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SearchTextField(
                onChanged: (value) {
                  BlocProvider.of<CategoryArticlesCubit>(context)
                      .fetchCategoryArticleByQuery(
                    category: widget.category,
                    search: value,
                  );
                },
              ),
              CustomFilter(),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          BlocBuilder<CategoryArticlesCubit, CategoryArticlesState>(
            builder: (context, state) {
              if (state is CategoryArticlesLoaded) {
                return CategoryArticle(
                  articles: state.articles,
                );
              } else if (state is CategoryArticlesFailure) {
                return Expanded(
                  child: CustomError(title: state.errMessage),
                );
              } else {
                return Expanded(
                  child: CustomLoading(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
