import 'package:flutter/material.dart';
import 'package:todo_list/values/colors.dart';
import 'package:todo_list/values/styles.dart';

class TaskTile extends StatefulWidget {
  final String label;

  const TaskTile({@required this.label, Key key}) : super(key: key);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void stateChanger(bool newCheckboxState) {
    setState(() {
      isChecked = newCheckboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.label,
        style: isChecked == true ? kTSLineThrough : null,
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        onChanged: stateChanger,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function onChanged;

  const TaskCheckbox({this.checkboxState, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      checkColor: Colors.white,
      activeColor: kColorMain,
      onChanged: onChanged,
    );
  }
}
