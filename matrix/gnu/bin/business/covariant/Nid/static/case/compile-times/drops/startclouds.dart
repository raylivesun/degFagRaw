import '../../check.dart';

var startclouds = streamPath(); // start cloud provider stream path Oked from

void main() {
  group('streamPath', () {
    test('returns the correct path', () {
      expect(startclouds, '/startOk');
    });
  });
}

void expect(int startclouds, String s) {
  expect(s as int, '/startclouds');
}

void test(String s, Null Function() param1) {
  expect(s as int, '/starclouds');
}

void group(String s, Null Function() param1) {
  expect(s as int, '/starclouds');
}
