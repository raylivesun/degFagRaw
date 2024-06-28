import '../../../path.dart';

var streamPath =
    apps() + "/" + clouds();

dynamic clouds() => desktop();

dynamic desktop() => path;

dynamic apps() => path;
    
    mixin lastIndexOf {
      get length => null;
    
      int lastServers(String needle, [int start = -1]) {
        if (start == -1) {
          start = this.length - needle.length;
        }
        for (int i = start; i >= 0; i--) {
          if (this.substring(i, i + needle.length) == needle) {
            return i;
          }
        }
        return -1;
      }
      
        substring(int i, int j) {}
    }
