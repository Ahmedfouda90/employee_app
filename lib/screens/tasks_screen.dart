import 'package:employee/cubit/todo_cubit.dart';
import 'package:employee/custom_widgets/customContainer1.dart';
import 'package:employee/custom_widgets/customContainer2.dart';
import 'package:employee/custom_widgets/task_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../const/consts.dart';
import '../cubit/todo_states.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tasks = AppCubit.get(context).newTasks;

    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext contrxt, AppStates state) {},
      builder: (BuildContext contrxt, AppStates state) {
        tasks = AppCubit.get(context).newTasks;
        return tasks.length == 0
            ? Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.menu,
                size: 100,
                color: Colors.green,
              ),
              Text('add new employees  ',style: TextStyle(
                fontSize: 22,fontWeight: FontWeight.bold,
              ),)
            ],
          ),
        )
            : ListView.separated(
                itemBuilder: (context, index) =>
                    TaskItems(tasks[index], context),
                separatorBuilder: (context, index) => Container(
                      width: double.infinity,
                      height: 2,
                      color: Colors.red,
                    ),
                itemCount: tasks.length);
      },
    )

        // TaskItems(

        ;
  }
}
