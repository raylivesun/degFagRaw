import 'dart:io';

var txp = TlsException("Transaction", OSError.noErrorCode as OSError?);

class TlsException implements Exception {
  late final String message;
  late final OSError? osError;
  late final String? stackTrace;
  late final String? cause;
  late final String? details;
  late final int? errorCode;
  late final int? errno;
  late final int? osErrorNumber;
  late final String? osErrorString;
  late final String? osErrorMessage;
  late final String? osErrorDomain;
  late final String? osErrorPath;
  late final String? osErrorFunction;
  late final String? osErrorLine;
  late final String? osErrorColumn;
  late final String? osErrorFilename;
  late final String? osErrorProcess;
  late final String? osErrorThread;
  late final String? osErrorAddress;
  
  TlsException(String s, OSError? noErrorCode);  
}

