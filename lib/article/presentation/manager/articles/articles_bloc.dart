import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_blog_flutter/article/data/models/article_list_model.dart';
import 'package:clean_blog_flutter/article/domain/entities/article_entity.dart';
import 'package:clean_blog_flutter/article/domain/use_cases/get_all_articles.dart';
import 'package:clean_blog_flutter/article/domain/use_cases/get_categories.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'articles_event.dart';

part 'articles_state.dart';

@injectable
class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  final GetAllArticles _getAllArticles;

  ArticlesBloc(this._getAllArticles) : super(ArticlesInitial()) {
    onLoadArticles();
  }

  void onLoadArticles() {
    on<LoadArticlesEvent>((event, emit) async {
      //check if the event has a category id or not
      emit(ArticlesLoading());
      var articles = await _getAllArticles.call(
        GetArticlesParams(
          categoryId: event.categoryId,
          subCategoryId: event.subCategoryId,
        ),
      );
      articles.fold(
        (failure) => emit(ArticlesError(failure.message)),
        (success) => emit(ArticlesLoaded(success)),
      );
    });
  }
}
