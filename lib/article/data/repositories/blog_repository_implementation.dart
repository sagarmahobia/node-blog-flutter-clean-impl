import 'package:clean_blog_flutter/article/data/data_sources/blog_data_source.dart';
import 'package:clean_blog_flutter/article/data/models/article_list_model.dart';
import 'package:clean_blog_flutter/article/data/models/categories_model.dart';
import 'package:clean_blog_flutter/article/domain/entities/article_entity.dart';
import 'package:clean_blog_flutter/article/domain/entities/category_entity.dart';
import 'package:clean_blog_flutter/article/domain/repositories/blog_repository.dart';
import 'package:clean_blog_flutter/core/errors/failure.dart';
import 'package:clean_blog_flutter/core/utils/typedef.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BlogRepository)
class BlogRepositoryImpl implements BlogRepository {
  final BlogDataSource _blogDataSource;

  BlogRepositoryImpl(this._blogDataSource);

  @override
  ResultValue<List<CategoryEntity>> getCategories({
    String? parent,
  }) async {
    try {
      CategoryModel category;
      if (parent != null) {
        category = await _blogDataSource.getSubCategories(parent);
      } else {
        category = await _blogDataSource.getCategories();
      }
      var data = category.data;
      if (data?.isNotEmpty ?? false) {
        return Right(
          data
                  ?.map(
                    (e) => CategoryEntity(
                      name: e.name,
                      id: e.id,
                    ),
                  )
                  .toList() ??
              [],
        );
      } else {
        return const Left(
          ApiFailure(
            message: "Categories not found",
            statusCode: 404,
          ),
        );
      }
    } catch (e) {
      if (e is DioException) {
        return Left(
          ApiFailure(
            message:
                e.response?.statusMessage ?? "Error while getting categories",
            statusCode: e.response?.statusCode ?? 500,
          ),
        );
      }

      return const Left(
        ApiFailure(
          message: "Error while getting categories",
          statusCode: 500,
        ),
      );
    }
  }

  @override
  ResultValue<List<ArticleEntity>> getAllArticles({
    String? categoryId,
    String? subCategoryId,
  }) async {
    //allArticles

    try {
      ArticleListModel articles;
      if (categoryId != null) {
        articles = await _blogDataSource.getArticlesByCategory(
          categoryId,
          subCategoryId,
        );
      } else {
        articles = await _blogDataSource.allArticles();
      }
      if (articles.data?.isNotEmpty ?? false) {
        return Right(articles.data?.map(
              (e) {
                return ArticleEntity(
                  title: e.title,
                  shortDescription: e.shortDescription,
                  description: e.description,
                  category: CategoryEntity(
                    name: e.category?.name,
                    id: e.category?.id,
                  ),
                  subCategories: e.subCategories
                      ?.map(
                        (e) => CategoryEntity(
                          name: e.name,
                          id: e.id,
                        ),
                      )
                      .toList(),
                  images: e.media?.map((e) => e.fullName ?? '').toList(),
                  tags: e.tags,
                  createdAt: e.createdAt,
                  id: e.id,
                );
              },
            ).toList() ??
            []);
      } else {
        return const Left(
          ApiFailure(
            message: "Articles not found",
            statusCode: 404,
          ),
        );
      }
    } catch (e) {
      if (e is DioException) {
        return Left(
          ApiFailure(
            message:
                e.response?.statusMessage ?? "Error while getting articles",
            statusCode: e.response?.statusCode ?? 500,
          ),
        );
      }

      return const Left(
        ApiFailure(
          message: "Error while getting articles",
          statusCode: 500,
        ),
      );
    }
  }
}
