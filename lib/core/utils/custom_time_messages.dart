import 'package:timeago/timeago.dart' as timeago;

class CustomTimeMessages implements timeago.LookupMessages {
  @override
  String suffixAgo() => '';
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixFromNow() => 'from now';
  @override
  String wordSeparator() => ' ';
  @override
  String lessThanOneMinute(int seconds) => 'Just Added ✓';
  @override
  String aboutAMinute(int minutes) => 'a minute ago';
  @override
  String minutes(int minutes) => '$minutes minutes ago';
  @override
  String aboutAnHour(int minutes) => 'an hour ago';
  @override
  String hours(int hours) => '$hours hours ago';
  @override
  String aDay(int hours) => 'a day ago';
  @override
  String days(int days) => '$days days ago';
  @override
  String aboutAMonth(int days) => 'a month ago';
  @override
  String months(int months) => '$months months ago';
  @override
  String aboutAYear(int year) => 'a year ago';
  @override
  String years(int years) => '$years years ago';
}
