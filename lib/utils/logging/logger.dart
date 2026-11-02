
import 'package:logger/logger.dart';

class LoggerHelper {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
  ); // Customize the log levels based on your needs

  /// Logger
  static void debug(String message) {
    _logger.d(message);
  }

  static void error(String message) {
    _logger.e(message);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void warning(String message) {
    _logger.w(message);
  }

  static void verbose(String message) {
    _logger.v(message);
  }

  static void wtf(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.wtf(message, error: error, stackTrace: stackTrace);
  }
}