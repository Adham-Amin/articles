import 'package:articles/Core/error/failure.dart';
import 'package:articles/Core/models/article_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure,List<ArticleModel>>> fetchArticles({required String q});
}