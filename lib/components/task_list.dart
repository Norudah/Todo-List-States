import 'package:flutter/material.dart';
import 'package:todo_list/models/Task.class.dart';
import 'task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> taskList = [
    Task(name: "Git gud.", isChecked: false),
    Task(name: "Develop and extend its network", isChecked: false),
    Task(name: "Get ingaged in its 1st mission", isChecked: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: taskList.length,
      itemBuilder: (context, index) {
        return TaskTile(
            label: taskList[index].name,
            isChecked: taskList[index].isChecked,
            onChange: (bool newValue) {
              setState(() {
                taskList[index].checkTrigger();
              });
            });
      },
    );
  }
}
