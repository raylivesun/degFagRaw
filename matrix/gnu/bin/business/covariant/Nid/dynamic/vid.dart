import 'dart:async';

var vid = Future(DateTime(year as int) as FutureOr Function());

mixin year {
  var _year;

  dynamic get yes => _year;

  set yes(value) {
    _year = value;
  }
}
