import 'dart:io';

import '../../e.g.dart';


var compileTimesError = ProcessException(ACCII);

dynamic get ACCII => String;

mixin format {
  void form(String s) => s;
  void formACCII(int s) => s;
  void formString(String s) => s;
  void formInt(int s) => s;
  void formDouble(double s) => s;
  void formBool(bool s) => s;
  void formList(List s) => s;
  void formMap(Map s) => s;  
}

class ProcessException implements Exception {
  final String message;
  ProcessException(this.message);
}

void main(List<String> args) {
  if (args.length!= 1) {
    print('Usage: <file>');
    exit(1);
  }
  var file = File(args[0]);
  if (!file.existsSync()) {
    print('File not found: $args[0]');
    exit(1);
  }
  var contents = file.readAsStringSync();
  var lines = contents.split('\n');
  var i = 0;
  while (i < lines.length) {
    var line = lines[i];
    if (line.startsWith('#')) {
      i++;
      continue;
    }
    var parts = line.split(':');
    var key = parts[0].trim();
    var value = parts[1].trim();
    if (key == 'compile_times') {
      var times = value.split(' ');
      if (times.length!= 3) {
        throw compileTimesError;
      }
      var compileTimes = new Map();
      compileTimes[0] = times[0];
      compileTimes[1] = times[1];
      compileTimes[2] = times[2];
      print(compileTimes);
    } else {
      print('$key: $value');
    }
    i++;
  }
  exit(0);
  // print(contents);
  // var lines = contents.split('\n');
  // var i = 0;
  // while (i < lines.length) {
  //   var line = lines[i];
  //   if (line.startsWith('#')) {
  //     i++;
  //     continue;
  //   }
  //   var parts = line.split(':');
  //   var key = parts[0].trim();
  //   var value = parts[1].trim();
  //   if (key == 'compile_times') {
  //     var times = value.split(' ');
  //     if (times.length!= 3) {
  //       throw compileTimesError;
  //     }
  //     var compileTimes = new Map();
  //     compileTimes[0] = times[0];
  //     compileTimes[1] = times[1];
  //     compileTimes[2] = times[2];
  //     print(compileTimes);
  //   } else {
  //     print('$key: $value');
  //   }
  //   i++;
  // }
  // exit(0);
}

dynamic get wwSpecial => a;

