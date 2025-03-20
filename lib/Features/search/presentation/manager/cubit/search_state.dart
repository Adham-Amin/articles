part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}
final class SearchLoading extends SearchState {}
final class SearchLoaded extends SearchState {

  final List<ArticleModel> articles;
  const SearchLoaded({required this.articles});

}
final class SearchFailure extends SearchState {
  
  final String errMessage;
  const SearchFailure({required this.errMessage});
  
}
