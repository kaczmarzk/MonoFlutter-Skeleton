// ignore_for_file: avoid_print

import 'package:loggy/loggy.dart';

abstract final class Logger {
  static void init() => Loggy.initLoggy(
        logPrinter: const _LogPrinter(),
      );
}

class _LogPrinter extends LoggyPrinter {
  const _LogPrinter();

  @override
  void onLog(LogRecord record) {
    switch (record.level) {
      case LogLevel.error || LogLevel.warning:
        return print('${record.printable} ${record.error != null ? '- ${record.error}' : ''}');
      case LogLevel.debug || LogLevel.info:
        return print(record.printable);
      default:
        return print(record);
    }
  }
}

extension _LogRecordExt on LogRecord {
  String get icon => switch (level) {
        LogLevel.error => '❌',
        LogLevel.warning => '⚠️',
        LogLevel.info => 'ℹ️',
        LogLevel.debug => '🔧',
        _ => '',
      };

  String get printable => '$icon| ${loggerName.substring(11)} | $message';
}
