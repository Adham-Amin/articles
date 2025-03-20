import 'package:articles/Core/utils/app_styles.dart';
import 'package:articles/Core/widgets/category_articles.dart';
import 'package:articles/Core/widgets/custom_error.dart';
import 'package:articles/Core/widgets/custom_loading.dart';
import 'package:articles/Core/widgets/search_text_field.dart';
import 'package:articles/Features/home/presentation/widgets/custom_filter.dart';
import 'package:articles/Features/search/presentation/manager/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

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
                  BlocProvider.of<SearchCubit>(context)
                      .fetchArticles(search: value);
                },
              ),
              CustomFilter(),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              if (state is SearchLoaded) {
                return CategoryArticle(
                  articles: state.articles,
                );
              } else if (state is SearchFailure) {
                return Expanded(
                  child: CustomError(title: state.errMessage),
                );
              } else if (state is SearchLoading) {
                return Expanded(child: CustomLoading());
              } else {
                return Expanded(
                  child: Center(
                    child: Text(
                      'Search Now',
                      style: AppStyles.textNormal14,
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
