import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:provider/provider.dart';
import 'package:todo/data/models/task.dart';
import 'package:todo/data/notifiers/task_notifier.dart';
import 'package:todo/data/styles/app_style.dart';

class DialogueBox extends ConsumerStatefulWidget {
  const DialogueBox({super.key});

  @override
  ConsumerState<DialogueBox> createState() => _DialogueBoxState();
}

class _DialogueBoxState extends ConsumerState<DialogueBox> {
  final taskTitleController = TextEditingController();

  @override
  void dispose() {
    taskTitleController.dispose();
    super.dispose();
  }

  void onAdd() {
    final String textVal = taskTitleController.text;

    if (textVal.isNotEmpty) {
      final Task todo = Task(
        title: textVal,
      );
      ref.read(todosModel).addTodo(todo);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add a New Task',
            style: AppStyle.h1Text,
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: taskTitleController,
            decoration: const InputDecoration(
              hintText: 'Add New Task',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.purple),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.purple.shade900),
              ),
              onPressed: onAdd,
              child: const Text('Submit'),
            ),
          )
        ],
      ),
    );
  }
}
