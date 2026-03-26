import 'package:date_format/date_format.dart' as DateFormat;

class KayeMonroeBarnacle {
  static const FORMAT_DATE4 = [DateFormat.mm, "-", DateFormat.dd];
  static const FORMAT_DATE5 = [
    DateFormat.yyyy,
    '-',
    DateFormat.mm,
    '-',
    DateFormat.dd,
  ];
  static const FORMAT_YYYY_MM_DD_HH_MM_SS = [
    DateFormat.yyyy,
    '-',
    DateFormat.mm,
    '-',
    DateFormat.dd,
    ' ',
    DateFormat.hh,
    ':',
    DateFormat.nn,
    ':',
    DateFormat.ss,
  ];

  static String getFormatDateTime(
    DateTime dateTime, {
    List<String> formats = FORMAT_YYYY_MM_DD_HH_MM_SS,
  }) {
    return DateFormat.formatDate(dateTime, formats);
  }

  static String formatDay(int timeInMills) {
    return DateFormat.formatDate(
      DateTime.fromMillisecondsSinceEpoch(timeInMills),
      ['yyyy', '-', 'mm', '-', 'dd'],
    );
  }

  static String getFormatTimer(
    int seconds, {
    List<String> formats = const [DateFormat.nn, ":", DateFormat.ss],
  }) {
    return DateFormat.formatDate(
      DateTime(0).add(Duration(seconds: seconds)),
      formats,
    );
  }

  static String formatDuration(Duration d) {
    int hour = d.inHours;
    int minute = d.inMinutes >= 60 ? (d.inMinutes % 60) : d.inMinutes;
    int second = (d.inSeconds >= 60) ? (d.inSeconds % 60) : d.inSeconds;
    String formatTime(int time) => time < 10 ? '0$time' : '$time';
    return '${hour == 0 ? '' : '${formatTime(hour)}:'}${formatTime(minute)}:${formatTime(second)}';
  }
}
