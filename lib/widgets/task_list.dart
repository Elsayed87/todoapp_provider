import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_provider/model/task_data.dart';
import 'package:todoapp_provider/widgets/task_tile.dart';

import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, value, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = value.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxcallback: (bool? checkboxstate) {
                value.updateTask(task);
              },
              longPressCallback: (){
                value.deleteTask(task);
              },
            );
          },
          itemCount: value.taskcount,
        );
      },
    );
  }
}
