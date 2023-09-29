
import 'package:awashderash/widget/home/header_info.dart';
import 'package:awashderash/widget/home/popular_list.dart';
import 'package:awashderash/widget/home/search_bar.dart';
import 'package:awashderash/widget/home/top_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: '')
        ],
      ),
      body: SafeArea(
        child: Column(children: [
//Greeting
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: HeaderInfo()
          ),
          const SizedBox(
            height: 10,
          ),
          //Search Bar
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child:SearchBar()

          ),
          const SizedBox(
            height: 25,
          ),
          //How do you feel
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'How Do youfeel today?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          //Diffent Faces
          const TopButton(),
          const SizedBox(
            height: 25,
          ),
          const PopularList()
        ]),
      ),
    );
  }
}

