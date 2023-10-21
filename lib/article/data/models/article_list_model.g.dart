// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleListModel _$ArticleListModelFromJson(Map<String, dynamic> json) =>
    ArticleListModel(
      success: json['success'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

ArticleInfoModel _$ArticleInfoModelFromJson(Map<String, dynamic> json) =>
    ArticleInfoModel(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : ArticleModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) => ArticleModel(
      title: json['title'] as String,
      shortDescription: json['shortDescription'] as String?,
      description: json['description'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      subCategories: (json['subCategories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      id: json['id'] as String?,
    );

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      name: json['name'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      parent: json['parent'] as String?,
      id: json['id'] as String?,
    );

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      originalName: json['originalName'] as String?,
      size: json['size'] as num?,
      extension: json['extension'] as String?,
      fullName: json['fullName'] as String?,
      id: json['id'] as String?,
    );
