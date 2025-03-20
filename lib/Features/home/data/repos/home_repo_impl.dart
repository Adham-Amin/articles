import 'package:articles/Core/error/failure.dart';
import 'package:articles/Core/models/article_model.dart';
import 'package:articles/Core/services/api_service.dart';
import 'package:articles/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  final String _apiKey = '1a7ff1d3573d424fb455194062391d2c';
  @override
  Future<Either<Failure, List<ArticleModel>>> fetchArticles() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint: '/everything?q=general&apiKey=$_apiKey&pageSize=100');

      List<ArticleModel> articles = [];
      for (var article in data['articles']) {
        articles.add(ArticleModel.fromJson(article));
      }

      return right(articles);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
  
  @override
  Future<Either<Failure, List<ArticleModel>>> fetchCategoryArticle({required String category}) async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint: '/top-headlines?apiKey=$_apiKey&category=$category');

      List<ArticleModel> articles = [];
      for (var article in data['articles']) {
        articles.add(ArticleModel.fromJson(article));
      }

      return right(articles);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
  
  @override
  Future<Either<Failure, List<ArticleModel>>> fetchCategoryArticleByQuery({required String category, required String q}) async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint: '/top-headlines?apiKey=$_apiKey&category=$category&q=$q');

      List<ArticleModel> articles = [];
      for (var article in data['articles']) {
        articles.add(ArticleModel.fromJson(article));
      }

      return right(articles);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
