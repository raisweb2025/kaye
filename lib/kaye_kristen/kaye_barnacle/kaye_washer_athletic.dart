import 'dart:convert';

import 'package:date_format/date_format.dart';
import 'package:logger/logger.dart';

class KayeWasherAthletic extends LogPrinter {
  static final levelPrefixes = {
    Level.trace: 'TRACE',
    Level.debug: 'DEBUG',
    Level.info: 'INFO ',
    Level.warning: 'WARN ',
    Level.error: 'ERROR',
    Level.fatal: 'FATAL',
  };

  static final _deviceStackTraceRegex = RegExp(r'#[0-9]+\s+(.+) \((\S+)\)');

  static final _webStackTraceRegex = RegExp(r'^((packages|dart-sdk)/\S+/)');

  static final _browserStackTraceRegex = RegExp(
    r'^(?:package:)?(dart:\S+|\S+)',
  );

  @override
  List<String> log(LogEvent event) {
    AnsiColor? color = PrettyPrinter.defaultLevelColors[event.level];

    String time = formatDate(DateTime.now(), [
      HH,
      ':',
      'nn',
      ':',
      ss,
      ',',
      SSS,
    ]);
    String method = const AnsiColor.fg(30)(
      formatStackTrace(event.stackTrace ?? StackTrace.current),
    );
    String level = color!('${levelPrefixes[event.level]}');
    var output = StringBuffer('$time $level $method');

    String msg = stringifyMessage(event.message);

    List<String> lines = msg.split("\n");
    if (lines.length > 1) {
      print("╔ ");
      for (String line in lines) {
        print('║ $line');
      }
      print("╚");
    } else {
      if (msg.length > 120) {
        int rows =
            (msg.length % 120 == 0 ? msg.length / 120 : msg.length / 120 + 1)
                .toInt();
        print("╔ ");
        for (int i = 0; i < rows; i++) {
          int end = (i + 1) * 120;
          if (end > msg.length) {
            end = msg.length;
          }
          String line = msg.substring(i * 120, end);
          print('║ $line');
        }
        print("╚");
      } else {
        output.write(' $msg');
      }
    }

    if (event.error != null) {
      output.write(const AnsiColor.fg(196)(' error="${event.error}"'));
    }

    return [output.toString()];
  }

  Object toEncodableFallback(dynamic object) {
    return object.toString();
  }

  String stringifyMessage(dynamic message) {
    final finalMessage = message is Function ? message() : message;
    if (finalMessage is Map || finalMessage is Iterable) {
      var encoder = JsonEncoder.withIndent('  ', toEncodableFallback);
      return encoder.convert(finalMessage);
    } else {
      return finalMessage.toString();
    }
  }

  String formatStackTrace(StackTrace? stackTrace) {
    List<String> lines = stackTrace
        .toString()
        .split('\n')
        .where(
          (line) =>
              !_discardDeviceStacktraceLine(line) &&
              !_discardWebStacktraceLine(line) &&
              !_discardBrowserStacktraceLine(line) &&
              line.isNotEmpty,
        )
        .toList();
    if (lines.isEmpty) {
      return 'unknown';
    }

    String msg = lines[0];
    int to = msg.lastIndexOf(':');
    int from = msg.lastIndexOf('/');
    return msg.substring(from + 1, to);
  }

  bool _discardDeviceStacktraceLine(String line) {
    var match = _deviceStackTraceRegex.matchAsPrefix(line);
    if (match == null) {
      return false;
    }
    final segment = match.group(2)!;
    if (segment.startsWith('package:logger')) {
      return true;
    }
    return _isInExcludePaths(segment);
  }

  bool _discardWebStacktraceLine(String line) {
    var match = _webStackTraceRegex.matchAsPrefix(line);
    if (match == null) {
      return false;
    }
    final segment = match.group(1)!;
    if (segment.startsWith('packages/logger') ||
        segment.startsWith('dart-sdk/lib')) {
      return true;
    }
    return _isInExcludePaths(segment);
  }

  bool _discardBrowserStacktraceLine(String line) {
    var match = _browserStackTraceRegex.matchAsPrefix(line);
    if (match == null) {
      return false;
    }
    final segment = match.group(1)!;
    if (segment.startsWith('package:logger') || segment.startsWith('dart:')) {
      return true;
    }
    return _isInExcludePaths(segment);
  }

  bool _isInExcludePaths(String segment) {
    if (segment.contains("kaye_washer_athletic")) {
      return true;
    }
    return false;
  }
}
