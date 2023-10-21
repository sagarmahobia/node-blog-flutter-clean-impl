// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clean_blog_flutter/article/data/data_sources/blog_data_source.dart'
    as _i4;
import 'package:clean_blog_flutter/article/data/repositories/blog_repository_implementation.dart'
    as _i6;
import 'package:clean_blog_flutter/article/domain/repositories/blog_repository.dart'
    as _i5;
import 'package:clean_blog_flutter/article/domain/use_cases/get_all_articles.dart'
    as _i7;
import 'package:clean_blog_flutter/article/domain/use_cases/get_categories.dart'
    as _i8;
import 'package:clean_blog_flutter/article/presentation/manager/articles/articles_bloc.dart'
    as _i9;
import 'package:clean_blog_flutter/article/presentation/manager/categories/categories_bloc.dart'
    as _i10;
import 'package:clean_blog_flutter/di/app-module.dart' as _i11;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.singletonAsync<_i3.Dio>(
      () => registerModule.getDio(),
      preResolve: true,
    );
    gh.singleton<_i4.BlogDataSource>(_i4.BlogDataSource(gh<_i3.Dio>()));
    gh.singleton<_i5.BlogRepository>(
        _i6.BlogRepositoryImpl(gh<_i4.BlogDataSource>()));
    gh.singleton<_i7.GetAllArticles>(
        _i7.GetAllArticles(gh<_i5.BlogRepository>()));
    gh.singleton<_i8.GetCategories>(
        _i8.GetCategories(gh<_i5.BlogRepository>()));
    gh.factory<_i9.ArticlesBloc>(
        () => _i9.ArticlesBloc(gh<_i7.GetAllArticles>()));
    gh.factory<_i10.CategoriesBloc>(
        () => _i10.CategoriesBloc(gh<_i8.GetCategories>()));
    return this;
  }
}

class _$RegisterModule extends _i11.RegisterModule {}
