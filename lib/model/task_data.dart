import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoapp_provider/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "nameoftask"),
    Task(name: 'Buy '),
    Task(name: ' coffee')
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskcount {
    return _tasks.length;
  }

  void addTask(String newtitletask) {
    _tasks.add(Task(name: newtitletask));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();

    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}
