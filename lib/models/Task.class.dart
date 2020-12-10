import 'package:flutter/cupertino.dart';

class Task {
  String name;
  bool isChecked;

  Task({@required this.name, @required this.isChecked});

  void checkTrigger() {
    this.isChecked = !this.isChecked;
  }
}
