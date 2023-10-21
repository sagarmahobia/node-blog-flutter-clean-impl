import 'package:clean_blog_flutter/article/data/models/article_list_model.dart';
import 'package:clean_blog_flutter/article/domain/entities/article_entity.dart';
import 'package:clean_blog_flutter/article/domain/repositories/blog_repository.dart';
import 'package:clean_blog_flutter/core/utils/typedef.dart';
import 'package:clean_blog_flutter/core/utils/use_case.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetAllArticles
    implements UseCaseWithParam<List<ArticleEntity>, GetArticlesParams> {
  final BlogRepository _blogRepository;

  const GetAllArticles(this._blogRepository);

  @override
  ResultValue<List<ArticleEntity>> call(
    GetArticlesParams params,
  ) async {
    return await _blogRepository.getAllArticles(
      categoryId: params.categoryId,
      subCategoryId: params.subCategoryId,
    );
  }
}

class GetArticlesParams {
  final String? categoryId;
  final String? subCategoryId;

  GetArticlesParams({
    this.categoryId,
    this.subCategoryId,
  });
}
