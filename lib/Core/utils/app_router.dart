import 'package:articles/Features/home/presentation/views/category_view.dart';
import 'package:articles/Features/home/presentation/views/home_view.dart';
import 'package:articles/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homeView = '/homeView';
  static const String categoryView = '/categoryView';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: categoryView,
        builder: (context, state) {
          return CategoryView(
            categoryName: state.extra as String,
          );
        },
      ),
    ],
  );
}
