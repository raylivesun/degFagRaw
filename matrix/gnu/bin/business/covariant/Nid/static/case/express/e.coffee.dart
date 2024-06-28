import 'dart:core';
import 'dart:developer';

var e = extensionStreamHasListener;

extension StreamHasListenerExtension<T> on Stream<T> {
  bool get extensionStreamHasListener => hasListener;
  
  get hasListener => null;

  bool get isNotEmpty => hasListener;

  bool get isEmpty =>!hasListener;

  bool get isNotEmptySync => hasListener;

  bool get isEmptySync =>!hasListener;

  bool get isNotEmptyAsync => hasListener;

  bool get isEmptyAsync =>!hasListener;

  bool get isNotEmptySyncAsync => hasListener;

  bool get isEmptySyncAsync =>!hasListener;

  
}

void addListener(ArgumentError error) {
  log(error.toString());
}

void removeListener(ArgumentError error) {
  log(error.toString());
}

void addListenerSync(ArgumentError error) {
  log(error.toString());
}

void removeListenerSync(ArgumentError error) {
  log(error.toString());
}

void addListenerAsync(ArgumentError error) {
  log(error.toString());
}

void removeListenerAsync(ArgumentError error) {
  log(error.toString());
}

void addListenerSyncAsync(ArgumentError error) {
  log(error.toString());
}

void removeListenerSyncAsync(ArgumentError error) {
  log(error.toString());
}

