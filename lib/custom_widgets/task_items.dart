import 'package:employee/cubit/todo_cubit.dart';
import 'package:employee/custom_widgets/add_delete_item.dart';
import 'package:employee/custom_widgets/customContainer1.dart';
import 'package:employee/custom_widgets/customContainer2.dart';
import 'package:flutter/material.dart';

Widget TaskItems(
  Map model,
  context,
) =>
    Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.red)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomContainer1(
                          text2: '${model['name']}', text1: 'name'),
                      CustomContainer2(
                          text2: '${model['title']}', text1: 'age'),
                      CustomContainer1(
                          text2: '${model['date']}', text1: 'position'),
                      CustomContainer2(
                          text2: '${model['time']}',
                          text1: 'years of Expereince'),
                      /*       CustomContainer1(text2: 'fouda', text1: 'years of Expereince'),
                  CustomContainer2(text2: 'fouda', text1: 'number'),*/
                    ],
                  ),
                ),
                AppCubit.get(context).currentIndex == 0
                    ? Center(
                      child: IconButton(
                          onPressed: () {
                            AppCubit.get(context)
                                .updateData(status: 'done', id: model['id']);
                          },
                          icon: Icon(
                            Icons.add,
                            size: 50,
                          )),
                    )
                    : addAndDeleteItem(
                        context,
                        model,
                        GestureDetector(
                            onTap: () {
                              AppCubit.get(context).currentIndex == 2
                                  ? AppCubit.get(context).updateData(
                                      status: 'done', id: model['id'])
                                  : AppCubit.get(context).updateData(
                                      status: 'archive', id: model['id']);
                            },
                            child: AppCubit.get(context).currentIndex == 1
                                ? Icon(
                                    Icons.delete,
                                    size: 50,
                                  )
                                : Icon(
                                    Icons.reset_tv_rounded,
                                    size: 50,
                                  )),
                        AppCubit.get(context).currentIndex == 2
                            ? GestureDetector(
                                onTap: () {
                                  AppCubit.get(context).currentIndex == 1
                                      ? AppCubit.get(context).updateData(
                                          status: 'archive', id: model['id'])
                                      : AppCubit.get(context)
                                          .deleteData(id: model['id']);
                                  ;
                                },
                                child: AppCubit.get(context).currentIndex == 1
                                    ? const Icon(
                                        Icons.delete,
                                        size: 50,
                                      )
                                    : const Icon(
                                        Icons.delete_forever_outlined,
                                        size: 50,
                                      ))
                            : Container())
              ],
            ),
            // Spacer(flex: 1,)
          ],
        ),
      ),

/*
  Row(
    children: [
      CircleAvatar(
        backgroundColor: Colors.indigo,
        radius: 40,
        child: Text(

          '${model['time']}',
          style: TextStyle(color: Colors.white),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${model['title']}',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text(
              '${model['date']}',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
                '${model['name']}',

              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      IconButton(
          onPressed: () {
            AppCubit.get(context)
                .updateData(status: 'done', id: model['id']);
          },
          icon: Icon(
            Icons.check_box,
            color: Colors.green,
          )),
      IconButton(
          onPressed: () {
            AppCubit.get(context)

                .updateData(status: 'archive', id: model['id']);
          },
          icon: Icon(Icons.archive_outlined)),
    ],
  ),
*/
    );

/*Widget TaskItems(Map model, context) => Dismissible(
  key: Key(model['id'].toString()),
  child: Padding(
    padding: EdgeInsets.all(20),
    child:

    Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.indigo,
          radius: 40,
          child: Text(

            '${model['time']}',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${model['title']}',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text(
                '${model['date']}',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '${model['name']}',

                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        IconButton(
            onPressed: () {
              AppCubit.get(context)
                  .updateData(status: 'done', id: model['id']);
            },
            icon: Icon(
              Icons.check_box,
              color: Colors.green,
            )),
        IconButton(
            onPressed: () {
              AppCubit.get(context)

                  .updateData(status: 'archive', id: model['id']);
            },
            icon: Icon(Icons.archive_outlined)),
      ],
    ),
  ),
  onDismissed: (direction) {
    AppCubit.get(context).deleteData(id: model['id']);
  },
);*/
