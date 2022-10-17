import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/data/styles/app_style.dart';
import 'package:todo/widgets/add_task_component/dialogue_box.dart';
import 'package:todo/widgets/tab_bar_components/all_tasks.dart';
import 'package:todo/widgets/tab_bar_components/complete_task.dart';
import 'package:todo/widgets/tab_bar_components/in_complete_task.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.purple.shade900,
        title: Text(
          'ToDo App',
          style: AppStyle.appBarTitle,
        ),
        bottom: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey.shade400,
          controller: controller,
          tabs: const <Widget>[
            Tab(text: 'All'),
            Tab(text: 'Incomplete'),
            Tab(text: 'Complete'),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const <Widget>[
          AllTasksTab(),
          IncompleteTasksTab(),
          CompletedTasksTab(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade900,
        // onPressed: (() {
        //   //ddd
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => const DialogueBox(),
        //     ),
        //   );
        // }),
        onPressed: (() => showDialog(
            context: context, builder: (context) => const DialogueBox())),
        child: const Icon(Icons.add),
      ),
    );
  }
}
