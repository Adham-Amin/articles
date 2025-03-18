import 'package:articles/Core/models/article_model.dart';
import 'package:articles/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fetch_articles_state.dart';

class ArticlesCubit extends Cubit<ArticlesState> {
  ArticlesCubit(this._homeRepo) : super(FetchArticlesInitial());

  final HomeRepo _homeRepo;

  Future<void> fetchArticles() async {
    emit(FetchArticlesLoading());
    var result = await _homeRepo.fetchArticles();
    result.fold(
      (failure) => emit(
        FetchArticlesFailure(failure.message),
      ),
      (articles) => emit(
        FetchArticlesLoaded(articles),
      ),
    );
  }
}
