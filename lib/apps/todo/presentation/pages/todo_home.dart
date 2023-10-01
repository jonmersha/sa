import 'package:awashderash/apps/todo/codes.dart';
import 'package:awashderash/widget/home/header_info.dart';
import 'package:awashderash/widget/home/popular_list.dart';
import 'package:awashderash/widget/home/search_bar.dart';
import 'package:awashderash/widget/home/top_button.dart';
import 'package:flutter/material.dart';

class TodoHome extends StatefulWidget {
  const TodoHome({Key? key}) : super(key: key);

  @override
  State<TodoHome> createState() => _TodoHomeState();
}

class _TodoHomeState extends State<TodoHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[900],
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.book), label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: '')
      //   ],
      // ),
      body: SafeArea(
        child: Column(children:  [
        Container(
          width: double.infinity,
          height: 300,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/todo/todologo.jpg'),
                  fit: BoxFit.cover)),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
             Row(
               children: [
                 Expanded(
                     child: Text('')),

               ],
             )
       ],
       ),
        ),

          PopularList()
        ]),
      ),
    );
  }
}
