import 'package:clean_blog_flutter/article/data/models/article_list_model.dart';
import 'package:clean_blog_flutter/article/data/models/categories_model.dart';
import 'package:clean_blog_flutter/article/domain/repositories/blog_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'blog_data_source.g.dart';

@RestApi(baseUrl: "http://192.168.0.113:3000")
@singleton
abstract class BlogDataSource  {
  @factoryMethod
  factory BlogDataSource(
    Dio dio,
  ) = _BlogDataSource;

  @GET("/category/parents")
  Future<CategoryModel> getCategories();

  @GET("/category/children")
  Future<CategoryModel> getSubCategories(
    @Query("id") String parentId,
  );

  @GET("/articles/list")
  Future<ArticleListModel> allArticles();

  @POST("/articles/by_category")
  Future<ArticleListModel> getArticlesByCategory(
    @Query("categoryId") String category,
    @Query("subCategoryId") String? subCategory,
  );

  @POST("/articles/filter")
  Future<ArticleListModel> searchArticles(
    @Body() SearchInputModel searchInputModel,
  );

  @GET("/articles/info")
  Future<ArticleInfoModel> getArticleDetail({
    @Query("id") required String id,
  });
}

class SearchInputModel {
  //{
  //   "category": "string",
  //   "subCategories": [
  //     "string"
  //   ],
  //   "tags": [
  //     "string"
  //   ],
  //   "search": "string"
  // }

  final String search;

  SearchInputModel({
    required this.search,
  });

  Map<String, dynamic> toJson() => {
        "search": search,
      };
}
