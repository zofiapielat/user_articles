import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:user_articles/data/remote_data_sources/articles/articles_remote_data_source.dart';
import 'package:user_articles/data/remote_data_sources/authors/authors_remote_data_source.dart';
import 'package:user_articles/domain/repositories/articles_repository.dart';
import 'package:user_articles/domain/repositories/authors_repository.dart';
import 'package:user_articles/features/articles/cubit/articles_cubit.dart';
import 'package:user_articles/features/home/cubit/home_cubit.dart';

import 'injection_container.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependenciesWithInjectable() => $initGetIt(getIt);

void configureDependenciesManually() {
  // Data sources
  getIt.registerLazySingleton<ArticlesRemoteRetroFitDataSource>(
    () => ArticlesRemoteRetroFitDataSource(Dio()),
  );

  getIt.registerLazySingleton<AuthorsRemoteRetroFitDataSource>(
    () => AuthorsRemoteRetroFitDataSource(Dio()),
  );

  // Repository
  getIt.registerLazySingleton<ArticlesRepository>(
    () => ArticlesRepository(
      remoteDataSource: getIt(),
    ),
  );
  getIt.registerLazySingleton<AuthorsRepository>(
    () => AuthorsRepository(
      remoteDataSource: getIt(),
    ),
  );

  // Bloc
  getIt.registerFactory(
    () => HomeCubit(
      authorsRepository: getIt(),
    ),
  );

  getIt.registerFactory(
    () => ArticlesCubit(
      articlesRepository: getIt(),
    ),
  );
}
