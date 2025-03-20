import 'package:articles/Core/utils/app_colors.dart';
import 'package:articles/Core/utils/services_locator.dart';
import 'package:articles/Features/home/data/repos/home_repo_impl.dart';
import 'package:articles/Features/home/presentation/manager/category_article_cubit/category_articles_cubit.dart';
import 'package:articles/Features/home/presentation/widgets/category_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryArticlesCubit(getIt.get<HomeRepoImpl>()),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0,
          leading: IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Text(categoryName),
          centerTitle: true,
          backgroundColor: AppColors.orange,
        ),
        body: CategoryViewBody(category: categoryName),
      ),
    );
  }
}
