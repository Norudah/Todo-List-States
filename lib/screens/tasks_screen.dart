import 'package:flutter/material.dart';
import 'package:todo_list/values/strings.dart';
import 'package:todo_list/values/styles.dart';
import 'package:todo_list/values/colors.dart';
import 'package:todo_list/components/task_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorMain,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: kColorMain,
        onPressed: null,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 60,
              left: 30,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 45,
                    color: kColorMain,
                  ),
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 20),
                Text(
                  kStringsAppTitle,
                  style: kTextStyleAppTitle,
                ),
                SizedBox(height: 2),
                Text(
                  kStringsRemainingTasks,
                  style: kTextStyleRemainingTasks,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: kBDTasksContainer,
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
