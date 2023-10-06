import 'package:awashderash/apps/todo/customer_color.dart';
import 'package:awashderash/apps/todo/presentation/pages/new_task.dart';
import 'package:awashderash/widget/home/popular_list.dart';
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
                .push(MaterialPageRoute(builder: (context) => NewTask()));
          },
          backgroundColor: custom_green,
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
      appBar: AppBar(actions: [Text('Fullas')]),
      body: SafeArea(
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/todo/todologo.jpg'),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Row(
                //   children: const [
                //     Expanded(child: Text('ssss')),
                //   ],
                // )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          PopularList(flowDirectio: floatingAction)
        ]),
      ),
    );
  }
}
