// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/remote_data_sources/articles/articles_remote_data_source.dart'
    as _i4;
import '../../data/remote_data_sources/authors/authors_remote_data_source.dart'
    as _i6;
import '../../domain/repositories/articles_repository.dart' as _i3;
import '../../domain/repositories/authors_repository.dart' as _i5;
import '../../features/articles/cubit/articles_cubit.dart' as _i8;
import '../../features/home/cubit/home_cubit.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ArticlesRepository>(() => _i3.ArticlesRepository(
      remoteDataSource: get<_i4.ArticlesRemoteRetroFitDataSource>()));
  gh.lazySingleton<_i5.AuthorsRepository>(() => _i5.AuthorsRepository(
      remoteDataSource: get<_i6.AuthorsRemoteRetroFitDataSource>()));
  gh.factory<_i7.HomeCubit>(
      () => _i7.HomeCubit(authorsRepository: get<_i5.AuthorsRepository>()));
  gh.factory<_i8.ArticlesCubit>(() =>
      _i8.ArticlesCubit(articlesRepository: get<_i3.ArticlesRepository>()));
  return get;
}
