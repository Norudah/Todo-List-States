import 'package:flutter/material.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(label: "Task number 1"),
        TaskTile(label: "Task number 2"),
        TaskTile(label: "Task number 3"),
      ],
    );
  }
}
