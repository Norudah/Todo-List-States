import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String label;

  const TaskTile({
    @required this.label,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
