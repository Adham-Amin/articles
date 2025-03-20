import 'package:articles/Core/models/article_model.dart';
import 'package:articles/Features/search/data/repos/search_repo.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future<void> fetchArticles({required String search}) async {
    emit(SearchLoading());
    var result = await searchRepo.fetchArticles(q: search);

    result.fold(
      (failure) => emit(
        SearchFailure(errMessage: failure.message),
      ),
      (articles) => emit(
        SearchLoaded(articles: articles),
      ),
    );
  }
}
