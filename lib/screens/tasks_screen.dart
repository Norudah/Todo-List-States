import 'package:flutter/material.dart';
import 'package:todo_list/values/strings.dart';
import 'package:todo_list/values/styles.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
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
                    color: Colors.lightBlueAccent,
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
              decoration: kBDTasksContainer,
            ),
          ),
        ],
      ),
    );
  }
}
