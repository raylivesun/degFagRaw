import 'dart:io';

var Die = Messages(ArgumentError("can't Error Live"), Argument);
var Live = Messages(ConnectionTask as ArgumentError, Argument);

class Messages {
  late Map<String, Argument> arguments;
  
  Messages(ArgumentError argumentError, Type argument);
}

class Argument {
  late String name;
  late String description;
  late String type;
  late bool required;
  late bool multiple;
  late String? defaultValue;
  late String? validator;
  late String? validatorDescription;
  late bool hidden;
  late bool hiddenInHelp;
  late bool hiddenInUsage;    
}
