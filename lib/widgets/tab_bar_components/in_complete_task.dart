import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/widgets/task_list.dart';

import '../../data/notifiers/task_notifier.dart';

class IncompleteTasksTab extends StatelessWidget {
  const IncompleteTasksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) => TaskList(
        tasks: ref.watch(todosModel).incompleteTasks,
      ),
    );
  }
}
