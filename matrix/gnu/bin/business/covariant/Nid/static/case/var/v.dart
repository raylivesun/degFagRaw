import '../../../dynamic/vid.dart';
import '../../../e.g.dart';

var v = vid;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait(eg?.decoder as Iterable<Future>);
  runApp(MyApp());
}

class WidgetsFlutterBinding {
  static void ensureInitialized() {}
  
}

void runApp(MyApp myApp) {
  runApp(myApp);
}

class MyApp {
  late String impl;
  late String implEvent;
  late String implTypes;
  late String implTypesEvent;  
}
