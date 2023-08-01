import 'package:intl/intl.dart';

extension NumberParsing on int {
  String get secondsToDateOnly {
    var date = DateTime.fromMillisecondsSinceEpoch(this);

    String formattedDate = DateFormat('yyyy-MM-dd').format(date);
    return formattedDate;
  }

  String get secondsTo24HourMinSeconds {
    var hour = Duration(seconds: this).inHours; // 2 mins
    var totalMinutes = Duration(seconds: this).inMinutes; // 2 mins
    var minute = totalMinutes % 60;

    var date = DateTime(DateTime.now().year, DateTime.now().month,
        DateTime.now().day, hour, minute, 0, 0, 0);

    String formattedDate = DateFormat('HH:mm:ss').format(date);
    return formattedDate;
  }

  String get secondsToPackageDuration {
    if (this == 3600) {
      return '1 hour';
    }
    var totalMinutes = Duration(seconds: this).inMinutes; // 2 mins

    return '$totalMinutes min';
  }

  int get secondsToCompleteHours {
    var hour = Duration(seconds: this).inHours; // 2 mins

    return hour;
  }

  int get secondsToMinutesLeftAfterCompleteHours {
    var totalMinutes = Duration(seconds: this).inMinutes; // 2 mins
    var minute = totalMinutes % 60;

    return minute;
  }

  String get secondsToTime {
    var hour = Duration(seconds: this).inHours; // 2 mins
    var totalMinutes = Duration(seconds: this).inMinutes; // 2 mins
    var minute = totalMinutes % 60;

    var date = DateTime(DateTime.now().year, DateTime.now().month,
        DateTime.now().day, hour, minute, 0, 0, 0);

    String formattedDate = DateFormat('hh:mm a').format(date);
    return formattedDate;
  }
}

extension IntegerExtension on int {
  String get formatNumber {
    if (this > 999 && this < 99999) {
      return "${(this / 1000).toStringAsFixed(1)} K";
    } else if (this > 99999 && this < 999999) {
      return "${(this / 1000).toStringAsFixed(0)} K";
    } else if (this > 999999 && this < 999999999) {
      return "${(this / 1000000).toStringAsFixed(1)} M";
    } else if (this > 999999999) {
      return "${(this / 1000000000).toStringAsFixed(1)} B";
    } else {
      return toString();
    }
  }

  String get fileSizeSpecifier {
    var divider = 1024;

    if (this < divider) {
      return '$this B';
    }

    if (this < divider * divider && this % divider == 0) {
      return '${(this / divider).toStringAsFixed(0)} KB';
    }

    if (this < divider * divider) {
      return '${(this / divider).toStringAsFixed(2)} KB';
    }

    if (this < divider * divider * divider && this % divider == 0) {
      return '${(this / (divider * divider)).toStringAsFixed(0)} MB';
    }

    if (this < divider * divider * divider) {
      return '${(this / divider / divider).toStringAsFixed(2)} MB';
    }

    if (this < divider * divider * divider * divider && this % divider == 0) {
      return '${(this / (divider * divider * divider)).toStringAsFixed(0)} GB';
    }

    if (this < divider * divider * divider * divider) {
      return '${(this / divider / divider / divider).toStringAsFixed(2)} GB';
    }

    if (this < divider * divider * divider * divider * divider &&
        this % divider == 0) {
      num r = this / divider / divider / divider / divider;
      return '${r.toStringAsFixed(0)} TB';
    }

    if (this < divider * divider * divider * divider * divider) {
      num r = this / divider / divider / divider / divider;
      return '${r.toStringAsFixed(2)} TB';
    }

    if (this < divider * divider * divider * divider * divider * divider &&
        this % divider == 0) {
      num r = this / divider / divider / divider / divider / divider;
      return '${r.toStringAsFixed(0)} PB';
    } else {
      num r = this / divider / divider / divider / divider / divider;
      return '${r.toStringAsFixed(2)} PB';
    }
  }

  String get formatTime {
    return '${(Duration(seconds: this))}'.split('.')[0].padLeft(8, '0');
  }
}
