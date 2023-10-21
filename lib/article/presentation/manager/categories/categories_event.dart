part of 'categories_bloc.dart';

@immutable
abstract class CategoriesEvent {}

class LoadCategoriesEvent extends CategoriesEvent {
  final String? parentId;

  LoadCategoriesEvent({
    this.parentId,
  });
}
