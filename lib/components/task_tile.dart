import 'package:flutter/material.dart';
import 'package:todo_list/values/colors.dart';
import 'package:todo_list/values/styles.dart';

class TaskTile extends StatelessWidget {
  final String label;
  final bool isChecked;
  final Function onChange;

  const TaskTile({
    @required this.label,
    @required this.isChecked,
    @required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: isChecked == true ? kTSLineThrough : null,
      ),
      trailing: Checkbox(
        value: isChecked,
        checkColor: Colors.white,
        activeColor: kColorMain,
        onChanged: onChange,
      ),
    );
  }
}

// void stateChanger(bool newCheckboxState) {
//   setState(() {
//     isChecked = newCheckboxState;
//   });
// }
