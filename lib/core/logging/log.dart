import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class Log {
  static late final Logger _logger;

  static void init() {
    _logger = Logger(level: kReleaseMode ? Level.off : Level.info);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void error(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }
}
