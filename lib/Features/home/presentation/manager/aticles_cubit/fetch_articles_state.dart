part of 'fetch_articles_cubit.dart';

sealed class ArticlesState extends Equatable {
  const ArticlesState();

  @override
  List<Object> get props => [];
}

final class FetchArticlesInitial extends ArticlesState {}
final class FetchArticlesLoading extends ArticlesState {}
final class FetchArticlesLoaded extends ArticlesState {
  final List<ArticleModel> articles;
  const FetchArticlesLoaded(this.articles);
}
final class FetchArticlesFailure extends ArticlesState {
  final String errMessage;
  const FetchArticlesFailure(this.errMessage);
}
