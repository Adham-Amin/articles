part of 'category_articles_cubit.dart';

sealed class CategoryArticlesState extends Equatable {
  const CategoryArticlesState();

  @override
  List<Object> get props => [];
}

final class CategoryArticlesInitial extends CategoryArticlesState {}
final class CategoryArticlesLoading extends CategoryArticlesState {}
final class CategoryArticlesLoaded extends CategoryArticlesState {
  final List<ArticleModel> articles;
  const CategoryArticlesLoaded(this.articles);
}
final class CategoryArticlesFailure extends CategoryArticlesState {
  final String errMessage;
  const CategoryArticlesFailure(this.errMessage);
}
