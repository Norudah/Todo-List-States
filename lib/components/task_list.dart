import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/Task.class.dart';
import 'package:todo_list/models/TaskBank.class.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskBank>(
      builder: (context, tasksBank, child) {
        return ListView.builder(
          itemCount: tasksBank.taskList.length,
          itemBuilder: (context, index) {
            return TaskTile(
              label: tasksBank.taskList[index].name,
              isChecked: tasksBank.taskList[index].isChecked,
              onChange: (bool newValue) {
                final task = tasksBank.taskList[index];
                tasksBank.checkTask(task);
              },
              onLongPress: () {
                final task = tasksBank.taskList[index];
                tasksBank.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
