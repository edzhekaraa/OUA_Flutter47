import 'package:flutter/material.dart';
import 'task.dart'; // Task modelini import edin

class TaskProvider extends ChangeNotifier {
  final List<Task> _tasks = [];
  final List<Task> _completedTasks = [];

  List<Task> get tasks => _tasks;
  List<Task> get completedTasks => _completedTasks;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void completeTask(int index) {
    final completedTask = _tasks.removeAt(index);
    completedTask.isCompleted = true;
    _completedTasks.add(completedTask);
    notifyListeners();
  }

  void uncompleteTask(int index) {
    final uncompletedTask = _completedTasks.removeAt(index);
    uncompletedTask.isCompleted = false;
    _tasks.add(uncompletedTask);
    notifyListeners();
  }
}
