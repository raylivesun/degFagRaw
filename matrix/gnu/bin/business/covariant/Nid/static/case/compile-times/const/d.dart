import '../../../extension/streamPath.dart';
import '../drops/startclouds.dart';

var d = desktop();

void main() {
  group('streamPath', () {
    test('streamPath', () {
      expect(d.streamPath, '/home/user/Desktop');
    });
  });
}
