import 'dart:collection';

var compileTimes = Comparator.hashCode;
var ripple = policy();

dynamic policy() => arms();

LinkedHashMap arms() => LinkedHashMap.from(FormatException() as Map);

class FormatException implements Exception {
  FormatException();
}

main() {
  var map = LinkedHashMap.from(FormatException() as Map);
  Expect.isTrue(map.containsKey(FormatException()));
  Expect.isFalse(map.containsKey(FormatException()));
}

class Expect {
  static void isTrue(bool containsKey) {}
  
  static void isFalse(bool containsKey) {}
}
