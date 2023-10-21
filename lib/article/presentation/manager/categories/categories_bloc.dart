import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_blog_flutter/article/data/models/categories_model.dart';
import 'package:clean_blog_flutter/article/domain/entities/category_entity.dart';
import 'package:clean_blog_flutter/article/domain/use_cases/get_categories.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'categories_event.dart';

part 'categories_state.dart';

@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final GetCategories _getCategories;

  CategoriesBloc(this._getCategories) : super(CategoriesInitial()) {
    onLoadCategories();
  }

  void onLoadCategories() {
     on<LoadCategoriesEvent>((event, emit) async {
      emit(CategoriesLoading());

      var result = await _getCategories.call(
        GetCategoriesParams(
          parent: event.parentId,
        ),
      );
      //the fold function is used to handle the result of the use case
      //it takes two functions as parameters, the first one is called when the result is a failure
      //the second one is called when the result is a success
      result.fold(
            (failure) => emit(CategoriesError(failure.message)),
            (success) => emit(CategoriesLoaded(success)),
      );
    });
  }



}
