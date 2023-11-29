import 'package:employee/cubit/todo_cubit.dart';
import 'package:flutter/material.dart';

Widget addAndDeleteItem(model,context,Widget iconOne,Widget iconTwo)=>            Padding(
  padding: const EdgeInsets.only(right: 15.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    // mainAxisSize: MainAxisSize.max,
    children: [

      iconOne,
      iconTwo,

    ],
  ),
);
