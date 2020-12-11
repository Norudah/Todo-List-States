import 'package:flutter/material.dart';
import 'package:todo_list/models/Task.class.dart';
import 'package:todo_list/values/strings.dart';
import 'package:todo_list/values/styles.dart';
import 'package:todo_list/values/colors.dart';
import 'package:todo_list/components/task_list.dart';
import 'package:todo_list/screens/add_task.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    List<Task> taskList = [
      Task(name: "Git gud.", isChecked: false),
      Task(name: "Develop and extend its network", isChecked: false),
      Task(name: "Get ingaged in its 1st mission", isChecked: false),
    ];

    return Scaffold(
      backgroundColor: kColorMain,
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
                  "${taskList.length.toString()} $kStringsRemainingTasks",
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
              child: TaskList(
                taskList: taskList,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: kColorMain,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return AddTaskScreen(
                    addTaskCallback: (String newTaskToBeAdded) {
                      setState(() {
                        taskList.add(Task(name: newTaskToBeAdded, isChecked: false));
                      });
                      Navigator.pop(context);
                      print(taskList);
                      print("Nombre de task dans taskList : ${taskList.length}");
                    },
                  );
                });
          }),
    );
  }
}
