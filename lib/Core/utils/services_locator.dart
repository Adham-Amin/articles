import 'package:articles/Core/services/api_service.dart';
import 'package:articles/Features/home/data/repos/home_repo_impl.dart';
import 'package:articles/Features/search/data/repos/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupServicesLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
