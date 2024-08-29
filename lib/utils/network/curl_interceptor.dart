import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

class CurlInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    // Generate and print the curl command
    log(_generateCurlCommand(options));

    return super.onRequest(options, handler);
  }

  String _generateCurlCommand(RequestOptions options) {
    final headers = <String>[];

    // Add headers to the curl command
    options.headers.forEach((key, value) {
      headers
        ..add('-H')
        ..add("'$key: $value'");
    });

    // Add query parameters to the URL
    var queryParams = '';
    if (options.queryParameters.isNotEmpty) {
      queryParams = '?${Transformer.urlEncodeMap(options.queryParameters)}';
    }

    // Create the curl command string
    var curlCommand =
        'curl ${headers.join(' ')} -X ${options.method} ${options.baseUrl}${options.path}$queryParams';

    // Add request data for POST, PUT, and PATCH methods
    if (options.method == 'POST' ||
        options.method == 'PUT' ||
        options.method == 'PATCH') {
      if (options.data != null) {
        final jsonData =
            json.encode(options.data); // Convert data object to JSON string
        curlCommand += " -d '$jsonData'";
      }
    }

    return curlCommand;
  }
}
