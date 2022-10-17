import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/data/models/task.dart';
import 'package:todo/data/notifiers/task_notifier.dart';

class TaskListItem extends ConsumerWidget {
  final Task task;

  const TaskListItem({super.key, required this.task});

  @override
  Widget build(BuildContext context, ref) {
    return ListTile(
      leading: Checkbox(
        value: task.completed,
        onChanged: (bool? checked) {
          ref.read(todosModel).toggleTodo(task);
        },
      ),
      title: Text(task.title),
      trailing: IconButton(
        icon: const Icon(
          Icons.delete_forever,
          color: Colors.grey,
        ),
        onPressed: () {
          ref.read(todosModel).deleteTodo(task);
        },
      ),
    );
  }
}
