import 'package:bloc/bloc.dart';
import 'package:employee/screens/home_page.dart';
import 'package:flutter/material.dart';

import 'const/consts.dart';

void main(){

  Bloc.observer = MyBlocObserver();

  runApp(TodoApp());
}
class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}







