import 'package:flutter/material.dart';
import 'package:todo_list/models/Task.class.dart';
import 'task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> taskList;

  TaskList({
    @required this.taskList,
  });

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.taskList.length,
      itemBuilder: (context, index) {
        return TaskTile(
            label: widget.taskList[index].name,
            isChecked: widget.taskList[index].isChecked,
            onChange: (bool newValue) {
              setState(() {
                widget.taskList[index].checkTrigger();
              });
            });
      },
    );
  }
}
