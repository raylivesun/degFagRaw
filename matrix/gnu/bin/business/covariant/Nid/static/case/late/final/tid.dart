import 'dart:developer';

var tid = TimelineTask();

mixin task {
  late String id;
  late String title;
  late String description;
  late String date;
  late String time;
  late String location;
  late String status;
  late String priority;
  late String _category;

  String get category => _category;

  set category(String value) {
    _category = value;
  }

  late String _owner;

  String get owner => _owner;

  set owner(String value) {
    _owner = value;
  }

  late String _assignee;

  String get assignee => _assignee;

  set assignee(String value) {
    _assignee = value;
  }

  late String dueDate;
  late String dueTime;
}

class Task implements Comparable<Task> {
  var id;

  var title;

  var description;

  var date;

  var time;

  var location;

  var status;

  var priority;

  var category;

  var owner;

  var assignee;

  var dueDate;

  var dueTime;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.location,
    required this.status,
    required this.priority,
    required this.category,
    required this.owner,
    required this.assignee,
    required this.dueDate,
    required this.dueTime,
  });
  @override
  int compareTo(Task other) {
    return this.title.compareTo(other.title);
  }

  @override
  String toString() {
    return 'Task{id: $id, title: $title, description: $description, date: $date, time: $time, location: $location, status: $status, priority: $priority, category: $category, owner: $owner, assignee: $assignee, dueDate: $dueDate, dueTime: $dueTime}';
  }

  @override
  bool operator ==(Object other) =>
      other is Task &&
      other.id == id &&
      other.title == title &&
      other.description == description &&
      other.date == date &&
      other.time == time &&
      other.location == location &&
      other.status == status &&
      other.priority == priority &&
      other.category == category &&
      other.owner == owner &&
      other.assignee == assignee &&
      other.dueDate == dueDate &&
      other.dueTime == dueTime;
  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      date.hashCode ^
      time.hashCode ^
      location.hashCode ^
      status.hashCode;
}
