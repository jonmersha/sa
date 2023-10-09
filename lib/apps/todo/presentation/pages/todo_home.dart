import 'package:awashderash/apps/todo/customer_color.dart';
import 'package:awashderash/apps/todo/presentation/pages/new_task.dart';
import 'package:awashderash/apps/todo/presentation/widgets/reusable_app_bar.dart';
import 'package:awashderash/apps/todo/presentation/widgets/todo_list.dart';
import 'package:flutter/material.dart';

class TodoHome extends StatefulWidget {
  const TodoHome({Key? key}) : super(key: key);

  @override
  State<TodoHome> createState() => _TodoHomeState();
}

class _TodoHomeState extends State<TodoHome> {
  void floatingAction(bool val) {
    setState(() {
      show = val;
    });
  }

  bool show = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      floatingActionButton: Visibility(
        visible: show,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const NewTask()));
          },
          backgroundColor: custom_green,
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          ReusableAppBar(
            logo: 'asset/todo/add.png',
            actionList: Container(),
          ),
          const SizedBox(
            height: 30,
          ),
          ToDoList(flowDirectio: floatingAction)
        ]),
      ),
    );
  }
}
