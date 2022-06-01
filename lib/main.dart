import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_provider/model/task_data.dart';
import 'package:todoapp_provider/screen/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return TaskData();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
