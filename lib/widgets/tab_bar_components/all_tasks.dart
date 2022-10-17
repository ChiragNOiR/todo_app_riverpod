import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/widgets/task_list.dart';
import '../../data/notifiers/task_notifier.dart';

class AllTasksTab extends StatelessWidget {
  const AllTasksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) => TaskList(
        tasks: ref.watch(todosModel).allTasks,
      ),
    );
  }
}
