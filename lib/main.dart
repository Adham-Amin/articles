import 'package:articles/Core/utils/app_router.dart';
import 'package:articles/Core/utils/services_locator.dart';
import 'package:articles/Features/home/data/repos/home_repo_impl.dart';
import 'package:articles/Features/home/presentation/manager/aticles_cubit/fetch_articles_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServicesLocator();
  runApp(const Articles());
}

class Articles extends StatelessWidget {
  const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArticlesCubit(
        getIt.get<HomeRepoImpl>(),
      )..fetchArticles(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
