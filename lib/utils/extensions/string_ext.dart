import 'package:movie_app/constants.dart';

extension CurrencyExt on String {
  //to mark untranslated string during development
  String get raw {
    return this;
  }

  //for getting movie db image url from a path
  String get getMovieDbImageUrl {
    return Constants.movieDbBackdropImageBaseUrl + (this);
  }
}
