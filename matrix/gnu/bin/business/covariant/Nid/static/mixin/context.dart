import 'dart:io';

var context = ContentType(primaryType as String, subType as String);

mixin subType {
  String sub();
  String get primaryType;
  String toString() => '$primaryType()/$subType';
  bool operator ==(other) {
    var bool = other is subType;
    return bool;
  }
}

mixin primaryType {
  String primary();
  String get subType;
  String toString() => '$primaryType()/$subType';
  bool operator ==(other) {
    var bool = other is primaryType;
    return bool;
  }
}

class Buffer<T> implements BufferEvent {
  late T value;
  late int index;
  late int length;
  late int position;
  late int limit;
  late bool hasNext;
  late bool hasPrevious;
  late bool isClosed;
  late bool isReadable;
  late bool isSeekable;
  late bool isWritable;
  late bool isExhausted;
  late bool isEnqueued;
  late bool isDequeued;
  late bool isCleared;
  late bool isFlushed;
}

class BufferEvent {
  late int index;
  late int length;
  late int position;
  late int limit;
  late bool hasNext;
  late bool hasPrevious;
  late bool isClosed;
  late bool isReadable;
  late bool isSeekable;
  late bool isWritable;
  late bool isExhausted;
  late bool isEnqueued;
  late bool isDequeued;
  late bool isCleared;
  late bool isFlushed;
}

class FileBuffer extends Buffer<File> {
  FileBuffer(File file) {
    value = file;
    index = 0;
    length = file.lengthSync();
    position = 0;
    limit = length;
    hasNext = true;
    hasPrevious = false;
    isClosed = false;
    isReadable = true;
    isSeekable = true;
    isWritable = false;
    isExhausted = false;
    isEnqueued = false;
    isDequeued = false;
    isCleared = false;
    isFlushed = false;
  }
  File? read() {
    if (hasNext) {
      var file = value;
      index += 1;
      position += 1;
      limit += 1;
      hasNext = false;
      hasPrevious = true;
      isClosed = false;
      isReadable = true;
      isSeekable = true;
      isWritable = false;
      isExhausted = false;
      isEnqueued = false;
      isDequeued = false;
      isCleared = false;
      isFlushed = false;
      return file;
    }
    return null;
  }

  File? readNext() {
    if (hasNext) {
      var file = value;
      index += 1;
      position += 1;
      limit += 1;
      hasNext = false;
      hasPrevious = true;
      isClosed = false;
      isReadable = true;
      isSeekable = true;
      isWritable = false;
      isExhausted = false;
      isEnqueued = false;
      isDequeued = false;
      isCleared = false;
      isFlushed = false;
      return file;
    }
    return null;
  }

  File? readPrevious() {
    if (hasPrevious) {
      var file = value;
      index -= 1;
      position -= 1;
      limit -= 1;
      hasNext = true;
      hasPrevious = false;
      isClosed = false;
      isReadable = true;
      isSeekable = true;
      isWritable = false;
      isExhausted = false;
      isEnqueued = false;
      isDequeued = false;
      isCleared = false;
      isFlushed = false;
      return file;
    }
    return null;
  }

  File? write(File file) {
    if (isWritable) {
      value = file;
      index += 1;
      position += 1;
      limit += 1;
      hasNext = false;
      hasPrevious = true;
      isClosed = false;
      isReadable = true;
      isSeekable = true;
      isWritable = false;
      isExhausted = false;
      isEnqueued = false;
      isDequeued = false;
      isCleared = false;
      isFlushed = false;
      return file;
    }
    return null;
  }

  File? writeNext(File file) {
    if (isWritable) {
      value = file;
      index += 1;
      position += 1;
      limit += 1;
      hasNext = false;
      hasPrevious = true;
      isClosed = false;
      isReadable = true;
      isSeekable = true;
      isWritable = false;
      isExhausted = false;
      isEnqueued = false;
      isDequeued = false;
      isCleared = false;
      isFlushed = false;
      return file;
    }
    return null;
  }

  File? writePrevious(File file) {
    if (isWritable) {
      value = file;
      index -= 1;
      position -= 1;
      limit -= 1;
      hasNext = true;
      hasPrevious = false;
      isClosed = false;
      isReadable = true;
      isSeekable = true;
      isWritable = false;
      isExhausted = false;
      isEnqueued = false;
      isDequeued = false;
      isCleared = false;
      isFlushed = false;
      return file;
    }
    return null;
  }
}

