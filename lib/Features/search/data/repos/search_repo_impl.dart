import 'package:articles/Core/error/failure.dart';
import 'package:articles/Core/models/article_model.dart';
import 'package:articles/Core/services/api_service.dart';
import 'package:articles/Features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;
  SearchRepoImpl(this.apiService);
  final String apiKey = '1a7ff1d3573d424fb455194062391d2c';
  @override
  Future<Either<Failure, List<ArticleModel>>> fetchArticles(
      {required String q}) async {
    try {
      Map<String, dynamic> data = await apiService.get(endPoint: '/everything?apiKey=$apiKey&q=$q');

      List<ArticleModel> articles = [];
      for (var article in data['articles'] ?? []) {
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
