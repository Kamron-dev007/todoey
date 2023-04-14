import 'package:flutter/cupertino.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Finish this course', isDone: false),
    Task(name: 'Finish this course', isDone: false),
    Task(name: 'Finish this course', isDone: false),
    Task(name: 'Finish this course', isDone: false),
  ];

  
  UnmodifiableListView<Task>? get tasks{
    return UnmodifiableListView(_tasks);
  }
  int get taskCoount {
    return _tasks.length;
  }

  void addNewTask(String taskName, bool currentPosition) {
    _tasks.add(Task(name: taskName, isDone: currentPosition));
    notifyListeners();
  }

    void updateTask (Task task){
      task.toggleDone();
      notifyListeners();
    }

    void deleteTask (Task task){
      _tasks.remove(task);
      notifyListeners();
    }

}
