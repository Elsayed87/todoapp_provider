import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_provider/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    String? newtitletask;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newtitletask = newText;
                //print(newText);
              },
            ),

            TextButton(
              onPressed: () {

             Provider.of<TaskData>(context,listen: false).addTask(newtitletask!);
             Navigator.pop(context);

              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              style:
                  TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
            )
          ],
        ),
      ),
    );
    ;
  }
}
