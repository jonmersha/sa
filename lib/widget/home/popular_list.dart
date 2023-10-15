import 'package:awashderash/apps/todo/presentation/widgets/task_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PopularList extends StatefulWidget {
  //bool show;

  Function(bool show) flowDirectio;
  PopularList({Key? key, required this.flowDirectio}) : super(key: key);

  @override
  State<PopularList> createState() => _PopularListState();
}

class _PopularListState extends State<PopularList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.all(25),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 128, 148, 176),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Task List',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(Icons.more_horiz)
            ],
          ),
          //List View
          const SizedBox(
            height: 16,
          ),

          Expanded(
              child: NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              if (notification.direction == ScrollDirection.forward) {
                setState(() {
                  widget.flowDirectio(true);
                });
              }
              if (notification.direction == ScrollDirection.reverse) {
                setState(() {
                  widget.flowDirectio(false);
                });
              }
              return true;
            },
            child: ListView.builder(
              itemBuilder: (context, index) {
                return const TaskWidget();
              },
              itemCount: 10,
            ),
          ))
        ],
      ),
    ));
  }
}
