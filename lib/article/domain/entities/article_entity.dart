import 'package:clean_blog_flutter/article/domain/entities/category_entity.dart';

class ArticleEntity {

  ArticleEntity({
    required this.title,
    required this.shortDescription,
    required this.description,
    required this.category,
    required this.subCategories,
    required this.images,
    required this.tags,
    required this.createdAt,
    required this.id,
  });

  final String? title;
  final String? shortDescription;
  final String? description;
  final CategoryEntity? category;
  final List<CategoryEntity>? subCategories;
  final List<String>? images;
  final List<String>? tags;
  final DateTime? createdAt;
  final String? id;
}
