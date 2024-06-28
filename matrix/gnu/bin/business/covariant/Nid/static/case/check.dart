import 'dart:io';

import '../../top-level/compileTimes.dart';
import 'port.dart';

var check = T.check();

class PortPassFollowing<T> implements PortPass {
  late final Port port;
  late final T value;
  late final bool isFollowing;
  late final bool isPassing;
  late final bool isPassingFollowing;
  late final bool isFollowingPassing;
  late final bool isPassingPassing;
}

class PortPass {
}

class Port {
  late final bool isPassing;
  late final bool isPassingFollowing;
  late final bool isFollowingPassing;
  late final bool isPassingPassing;
}

void main() {
  Penalt();
}

int Penalt() => streamPath();

int streamPath() => Directory.current = new Port() as int;

int get AnalysisPorts => compileTimes;
