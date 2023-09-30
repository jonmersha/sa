import 'package:awashderash/main/widget/main/apps_menu.dart';
import 'package:awashderash/main/widget/main/top_button.dart';
import 'package:awashderash/widget/home/header_info.dart';
import 'package:awashderash/widget/home/search_bar.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue[900],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: '')
        ],
      ),
      body: SafeArea(
        child: Column(children: const [
          HeaderInfo(),
          SearchBar(),
          TopButtonContainer(),
           AppMenu()
        ]),
      ),
    );
  }
}
