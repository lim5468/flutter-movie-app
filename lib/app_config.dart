import 'package:flutter_dotenv/flutter_dotenv.dart';

enum AppFlavor {
  staging,
  development,
  production,
}

abstract class AppConfig {
  AppFlavor get flavor;

  String get movieDbBaseUrl;

  String get movieDbApiKey;

  Duration get connectTimeout;

  Duration get receiveTimeout;
}

AppConfig getAppConfig(AppFlavor flavor) {
  switch (flavor) {
    case AppFlavor.development:
      return DevAppConfig();
    case AppFlavor.staging:
      return StagingAppConfig();
    case AppFlavor.production:
      return ProductionAppConfig();
  }
}

class DevAppConfig implements AppConfig {
  @override
  String get movieDbBaseUrl => 'https://api.themoviedb.org/3';

  @override
  AppFlavor get flavor => AppFlavor.development;

  @override
  Duration get connectTimeout => const Duration(seconds: 30);

  @override
  Duration get receiveTimeout => const Duration(seconds: 30);

  @override
  String get movieDbApiKey => dotenv.env['TMDB_API_KEY']!;
}

class StagingAppConfig implements AppConfig {
  @override
  String get movieDbBaseUrl => 'https://api.themoviedb.org/3';

  @override
  AppFlavor get flavor => AppFlavor.staging;

  @override
  Duration get connectTimeout => const Duration(seconds: 30);

  @override
  Duration get receiveTimeout => const Duration(seconds: 30);

  @override
  String get movieDbApiKey => dotenv.env['TMDB_API_KEY']!;
}

class ProductionAppConfig implements AppConfig {
  @override
  String get movieDbBaseUrl => 'https://api.themoviedb.org/3';

  @override
  AppFlavor get flavor => AppFlavor.production;

  @override
  Duration get connectTimeout => const Duration(seconds: 5);

  @override
  Duration get receiveTimeout => const Duration(seconds: 5);

  @override
  String get movieDbApiKey => dotenv.env['TMDB_API_KEY']!;
}
