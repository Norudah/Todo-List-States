import 'package:flutter/material.dart';

/*
TEXT STYLES
 */

const TextStyle kTextStyleAppTitle = TextStyle(
  color: Colors.white,
  fontSize: 40,
  fontWeight: FontWeight.w700,
);

const TextStyle kTextStyleRemainingTasks = TextStyle(
  fontSize: 15,
  color: Colors.white,
);

/*
BOX DECORATIONS
 */

const BoxDecoration kBDTasksContainer = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
  ),
);
