part of 'articles_bloc.dart';

@immutable
abstract class ArticlesState {}

class ArticlesInitial extends ArticlesState {}

class ArticlesLoading extends ArticlesState {}


class ArticlesLoaded extends ArticlesState {
  final List<ArticleEntity> articles;

  ArticlesLoaded(this.articles);
}

class ArticlesError extends ArticlesState {
  final String message;

  ArticlesError(this.message);
}
