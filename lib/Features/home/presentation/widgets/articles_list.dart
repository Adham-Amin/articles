import 'package:articles/Core/widgets/custom_error.dart';
import 'package:articles/Core/widgets/custom_loading.dart';
import 'package:articles/Features/home/presentation/manager/aticles_cubit/fetch_articles_cubit.dart';
import 'package:articles/Features/home/presentation/widgets/article_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticlesList extends StatelessWidget {
  const ArticlesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticlesCubit, ArticlesState>(
      builder: (context, state) {
        if (state is FetchArticlesLoaded) {
          return SliverList.builder(
            itemCount: state.articles.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ArticleItem(article: state.articles[index],),
            ),
          );
        } else if (state is FetchArticlesFailure) {
          return SliverFillRemaining(
            child: CustomError(title: state.errMessage),
          );
        } else {
          return SliverFillRemaining(
            child: CustomLoading(),
          );
        }
      },
    );
  }
}