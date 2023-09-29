import 'package:awashderash/util/list_item.dart';
import 'package:flutter/material.dart';

class PopularList extends StatelessWidget {
  const PopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20))),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'workOut',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
              //List View
              const SizedBox(
                height: 16,
              ),
              // Container(
              //
              //       child: ListItem(),
              //   ),
              Expanded(
                child: ListView(
                  children: const [
                    ListItem(),
                    ListItem(),
                    ListItem(),
                    ListItem(),
                    ListItem(),
                    ListItem(),
                    ListItem(),
                    ListItem(),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
