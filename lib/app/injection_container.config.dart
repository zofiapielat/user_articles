// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:user_articles/app/injection_container.dart' as _i11;
import 'package:user_articles/data/remote_data_sources/article_details_remote_data_source.dart'
    as _i4;
import 'package:user_articles/data/remote_data_sources/articles_remote_data_source.dart'
    as _i5;
import 'package:user_articles/data/remote_data_sources/authors_remote_data_source.dart'
    as _i7;
import 'package:user_articles/domain/repositories/articles_repository.dart'
    as _i6;
import 'package:user_articles/domain/repositories/authors_repository.dart'
    as _i8;
import 'package:user_articles/features/articles/cubit/articles_cubit.dart'
    as _i10;
import 'package:user_articles/features/home/cubit/home_cubit.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i3.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i4.ArticleDetailsRemoteRetrofitDataSource>(
        () => _i4.ArticleDetailsRemoteRetrofitDataSource(gh<_i3.Dio>()));
    gh.factory<_i5.ArticlesRemoteRetrofitDataSource>(
        () => _i5.ArticlesRemoteRetrofitDataSource(gh<_i3.Dio>()));
    gh.factory<_i6.ArticlesRepository>(() => _i6.ArticlesRepository(
        remoteDataSource: gh<_i5.ArticlesRemoteRetrofitDataSource>()));
    gh.factory<_i7.AuthorsRemoteRetrofitDataSource>(
        () => _i7.AuthorsRemoteRetrofitDataSource(gh<_i3.Dio>()));
    gh.factory<_i8.AuthorsRepository>(() => _i8.AuthorsRepository(
        remoteDataSource: gh<_i7.AuthorsRemoteRetrofitDataSource>()));
    gh.factory<_i9.HomeCubit>(
        () => _i9.HomeCubit(authorsRepository: gh<_i8.AuthorsRepository>()));
    gh.factory<_i10.ArticlesCubit>(() =>
        _i10.ArticlesCubit(articlesRepository: gh<_i6.ArticlesRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i11.RegisterModule {}
