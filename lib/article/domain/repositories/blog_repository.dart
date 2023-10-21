import 'package:clean_blog_flutter/article/data/models/article_list_model.dart';
import 'package:clean_blog_flutter/article/data/models/categories_model.dart';
import 'package:clean_blog_flutter/article/domain/entities/article_entity.dart';
import 'package:clean_blog_flutter/article/domain/entities/category_entity.dart';
import 'package:clean_blog_flutter/core/utils/typedef.dart';

abstract class BlogRepository {
  const BlogRepository();

  ResultValue<List<CategoryEntity>> getCategories({
    String? parent,
  });

  ResultValue<List<ArticleEntity>> getAllArticles({
    String? categoryId,
    String? subCategoryId,
  });
}
