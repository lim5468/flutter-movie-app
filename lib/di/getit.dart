import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/app_config.dart';
import 'package:movie_app/data/remote/movie_db/movie_api_service.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/data/repository/movie_repository_impl.dart';
import 'package:movie_app/di/getit.config.dart';
import 'package:movie_app/utils/network/curl_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void _configureDependencies() => getIt.init();

Future<void> setupServices(AppFlavor flavor) async {
  await _registerAppConfig(flavor);
  await _registerAppComponents();
  await _registerRepositories();
  _configureDependencies();
}

Future<void> _registerAppConfig(AppFlavor flavor) async {
  final appConfig = getAppConfig(flavor);
  getIt.registerSingleton<AppConfig>(appConfig);
}

Future<void> _registerAppComponents() async {}

Future<void> _registerRepositories() async {
  final appConfig = getIt.get<AppConfig>();

  final movieDbDio = Dio(
    BaseOptions(
      baseUrl: appConfig.movieDbBaseUrl,
      connectTimeout: appConfig.connectTimeout,
      receiveTimeout: appConfig.receiveTimeout,
    ),
  );

  if (kDebugMode) {
    movieDbDio.interceptors.addAll([
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
      CurlInterceptor(),
    ]);
  }

  final apiClient = MovieApiService(movieDbDio);
  final repository = MovieRepositoryImpl(apiClient, appConfig.movieDbApiKey);
  getIt.registerSingleton<MovieRepository>(repository);
}
