import 'package:flutter/material.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key});

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(actions: [Text('Fullas'), Text('Fullas')]),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.amber,
                image:
                    DecorationImage(image: AssetImage('asset/todo/add.png'))),
          )
        ],
      )),
    );
  }
}
