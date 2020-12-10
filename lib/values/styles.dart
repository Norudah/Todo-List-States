import 'package:flutter/material.dart';
import 'colors.dart';

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

const TextStyle kTSofTFofBottomSheet = TextStyle(
  fontSize: 20,
  color: kColorMain,
);

const TextStyle kTSTitleBottomSheet = TextStyle(
  color: kColorMain,
  fontSize: 30,
  fontWeight: FontWeight.w800,
);

const TextStyle kTSLineThrough = TextStyle(
  decoration: TextDecoration.lineThrough,
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

/*
INPUT DECORATION
 */

InputDecoration kIDBottonSheet = InputDecoration(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: kColorMain),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: kColorMain, width: 2),
  ),
);

/*
BUTTON STYLES
 */

ButtonStyle kBSBottomSheet = ButtonStyle(
  backgroundColor: MaterialStateProperty.resolveWith((states) {
    return kColorMain;
  }),
  overlayColor: MaterialStateProperty.resolveWith((states) {
    return Colors.purple;
  }),
);
