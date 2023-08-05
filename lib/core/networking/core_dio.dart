import 'package:anywhere_character_viewer/core/environment/environment_variables.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class CoreDio {
  static const String _baseUrl = 'https://api.duckduckgo.com/';

  static Dio getClient(
    EnvironmentVariables environmentVariables,
  ) {
    return Dio(BaseOptions(baseUrl: _baseUrl))
      ..interceptors.addAll(
        [
          if (kDebugMode)
            PrettyDioLogger(
              requestBody: true,
              logPrint: (s) => debugPrint(s.toString()),
            ),
        ],
      );
  }
}
