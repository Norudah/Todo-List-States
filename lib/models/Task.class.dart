import 'package:flutter/cupertino.dart';

class Task {
  String name;
  bool isChecked;

  Task({@required this.name, this.isChecked = false});

  void checkTrigger() {
    this.isChecked = !this.isChecked;
  }
}
