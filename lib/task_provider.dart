import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _tasks = [];
  final List<Map<String, dynamic>> _completedTasks = [];

  List<Map<String, dynamic>> get tasks => _tasks;
  List<Map<String, dynamic>> get completedTasks => _completedTasks;

  void addTask(Map<String, dynamic> task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void completeTask(int index) {
    final completedTask = _tasks.removeAt(index);
    _completedTasks.add(completedTask);
    notifyListeners();
  }
}
