import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/data/models/task.dart';

final todosModel = ChangeNotifierProvider((ref) => TodosModel());

class TodosModel extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: 'New Task 1'),
    Task(title: 'New Task 2'),
  ];

  UnmodifiableListView<Task> get allTasks => UnmodifiableListView(_tasks);
  UnmodifiableListView<Task> get incompleteTasks =>
      UnmodifiableListView(_tasks.where((todo) => !todo.completed));
  UnmodifiableListView<Task> get completedTasks =>
      UnmodifiableListView(_tasks.where((todo) => todo.completed));

  void addTodo(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void toggleTodo(Task task) {
    final taskIndex = _tasks.indexOf(task);
    _tasks[taskIndex].toggleCompleted();
    notifyListeners();
  }

  void deleteTodo(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
