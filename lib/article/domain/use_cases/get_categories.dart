import 'package:clean_blog_flutter/article/data/models/categories_model.dart';
import 'package:clean_blog_flutter/article/domain/entities/category_entity.dart';
import 'package:clean_blog_flutter/article/domain/repositories/blog_repository.dart';
import 'package:clean_blog_flutter/core/utils/typedef.dart';
import 'package:clean_blog_flutter/core/utils/use_case.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetCategories
    implements UseCaseWithParam<List<CategoryEntity>, GetCategoriesParams> {
  final BlogRepository _blogRepository;

  const GetCategories(this._blogRepository);

  @override
  ResultValue<List<CategoryEntity>> call(
    GetCategoriesParams params,
  ) async {
    return await _blogRepository.getCategories();
  }
}

class GetCategoriesParams {
  final String? parent;

  GetCategoriesParams({
    this.parent,
  });
}
