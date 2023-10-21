part of 'articles_bloc.dart';

@immutable
abstract class ArticlesEvent {}

class LoadArticlesEvent extends ArticlesEvent {
  final String? categoryId;
  final String? subCategoryId;

  LoadArticlesEvent({
    this.categoryId,
    this.subCategoryId,
  });
}
