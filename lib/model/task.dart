import 'package:flutter/material.dart';

class Task extends ChangeNotifier{
 late final String name;
  bool isDone;
  Task({required this.name, this.isDone=false});
  void toggleDone (){
    isDone=!isDone;

  }

}