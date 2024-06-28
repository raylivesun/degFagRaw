import 'dart:html';
import 'dart:html_common';

var e = FilteredElementList(Query("select") as Node);

class Query {
  final String selector;
  Query(this.selector);
}
