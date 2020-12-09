import 'package:flutter/material.dart';
import 'package:todo_list/values/colors.dart';
import 'package:todo_list/values/styles.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              onPressed: () => print("button pressed"),
            ),
          ],
        ),
      ),
    );
  }
}
