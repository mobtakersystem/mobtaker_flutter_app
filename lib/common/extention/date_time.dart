import 'package:timeago/timeago.dart' as timeago;
extension DateTimeExt on DateTime{
  String getTimeAgo([String local="fa"]){
    return timeago.format(this, locale: local);
  }
}