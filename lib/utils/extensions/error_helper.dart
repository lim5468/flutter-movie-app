import 'package:dio/dio.dart';

extension ObjectExt on Object {
  String get errorMessage {
    var message = '';

    if (this is String) {
      message = this as String;
    } else if (this is DioException) {
      final exception = this as DioException;

      if (exception.response?.data != null) {
        try {
          message = exception.response!.data['status_message'] as String;
        } catch (e) {
          message = exception.message ?? '';
        }
      } else {
        message = exception.message ?? '';
      }
    } else {
      message = toString();
    }

    return message;
  }
}
