import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name: 'Wake up and pray'),
    Task(name: 'Eat breakfast'),
    Task(name: 'Drink Coffee'),
  ];

  int get taskCount{
    return tasks.length;
  }
  void addItem(String text){
    tasks.add(Task(name:text));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}