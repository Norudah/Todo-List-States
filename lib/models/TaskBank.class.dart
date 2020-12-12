import 'package:flutter/foundation.dart';
import 'package:todo_list/models/Task.class.dart';

import 'Task.class.dart';

class TaskBank extends ChangeNotifier {
  List<Task> taskList = [
    Task(name: "Git gud at programming"),
    Task(name: "being binary fluent with computers"),
    Task(name: "Develop and extend its network"),
    Task(name: "Get assigned in its 1st mission"),
  ];

  int get numberOfTasks => taskList.length;

  void addNewTask(String taskTitle) {
    final task = Task(name: taskTitle);
    taskList.add(task);
    notifyListeners();
  }

  void checkTask(Task task) {
    task.checkTrigger();
    notifyListeners();
  }

  void deleteTask(Task task) {
    taskList.remove(task);
    notifyListeners();
  }
}
