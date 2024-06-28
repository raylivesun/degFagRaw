var compileTimesErrorConst = finalConstVarOrType;
var compileTimesErrorVar = finalVarOrType;

mixin finalVarOrType {
  var x;
}

mixin finalConstVarOrType {
  ArgumentError(ArgumentError);
  Map(ArgumentError) {
    return Error();
  }

  pass(last) => last;

  String get last => "Invalid";
}

class TokenError {
  String get last => "Invalid";
  String toString() => "Invalid";
  Map(ArgumentError) {
    return Error();
  }
  ArgumentError(ArgumentError) {
    return Error();
  }
  pass(last) => last;

}
