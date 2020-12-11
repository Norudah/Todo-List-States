import 'package:flutter/material.dart';
import 'package:todo_list/values/colors.dart';
import 'package:todo_list/values/styles.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen({this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: kColorBottomSheet,
      child: Container(
        decoration: kBDTasksContainer,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Add Task",
              style: kTSTitleBottomSheet,
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                cursorColor: kColorMain,
                decoration: kIDBottonSheet,
                style: kTSofTFofBottomSheet,
                textAlign: TextAlign.center,
                onChanged: (editedValue) {
                  newTaskTitle = editedValue;
                  print("Textfield edited : $newTaskTitle");
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text(
                "Add".toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: kBSBottomSheet,
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
            ),
          ],
        ),
      ),
    );
  }
}
