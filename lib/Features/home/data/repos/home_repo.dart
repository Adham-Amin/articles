import 'package:articles/Core/error/failure.dart';
import 'package:articles/Core/models/article_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ArticleModel>>> fetchArticles();
  Future<Either<Failure, List<ArticleModel>>> fetchArticlesByCategory({required String category});
}