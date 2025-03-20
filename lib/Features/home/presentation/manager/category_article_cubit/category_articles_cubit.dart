import 'package:articles/Core/models/article_model.dart';
import 'package:articles/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'category_articles_state.dart';

class CategoryArticlesCubit extends Cubit<CategoryArticlesState> {
  CategoryArticlesCubit(this._homeRepo) : super(CategoryArticlesInitial());

  final HomeRepo _homeRepo;

  Future<void> fetchCategoryArticle({required String category}) async {
    emit(CategoryArticlesLoading());
    var result = await _homeRepo.fetchCategoryArticle(category: category);
    result.fold(
      (failure) => emit(
        CategoryArticlesFailure(failure.message),
      ),
      (articles) => emit(
        CategoryArticlesLoaded(articles),
      ),
    );
  }

  Future<void> fetchCategoryArticleByQuery({required String category, required String search}) async {
    emit(CategoryArticlesLoading());
    var result = await _homeRepo.fetchCategoryArticleByQuery(category: category, q: search);
    result.fold(
      (failure) => emit(
        CategoryArticlesFailure(failure.message),
      ),
      (articles) => emit(
        CategoryArticlesLoaded(articles),
      ),
    );
  }
}
