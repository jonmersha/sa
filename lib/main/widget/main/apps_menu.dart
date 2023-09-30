import 'package:awashderash/apps/todo/presentation/pages/login_page.dart';
import 'package:awashderash/apps/todo/presentation/pages/sign_up.dart';
import 'package:awashderash/apps/todo/presentation/pages/tutor_login.dart';
import 'package:awashderash/main/widget/button.dart';
import 'package:awashderash/main/widget/main/slid_ads.dart';
import 'package:awashderash/security/auth_page.dart';
import 'package:flutter/material.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20) ),
            color: Colors.white,
          ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Apps',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
            ),
            SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              MenuButton(iconColor: Colors.white,icon: Icons.menu_book,labelText: 'Reading',backGround: Colors.indigo,page: LoginPage(),),
              MenuButton(iconColor: Colors.white,icon: Icons.bus_alert,labelText: 'Travel',backGround: Colors.lightGreen,page: LoginPage()),
              MenuButton(iconColor: Colors.white,icon: Icons.hotel,labelText: 'Hotel',backGround: Colors.indigo,page: LoginPage()),
              MenuButton(iconColor: Colors.white,icon: Icons.shopping_cart_outlined,labelText: 'Gebeya',backGround: Colors.redAccent,page: LoginPage()),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              MenuButton(iconColor: Colors.white,icon: Icons.school,labelText: 'School',backGround: Colors.orange,page: LoginPage()),
              MenuButton(iconColor: Colors.white,icon: Icons.bus_alert,labelText: 'Travel',backGround: Colors.deepPurpleAccent,page: LoginPage()),
              MenuButton(iconColor: Colors.white,icon: Icons.account_balance,labelText: 'Bank',backGround: Colors.indigo,page: LoginPage()),
              MenuButton(iconColor: Colors.white,icon: Icons.storage,labelText: 'Bonda',backGround: Colors.deepOrange,page: LoginPage()),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              MenuButton(iconColor: Colors.white,icon: Icons.task_outlined,labelText: 'ToDo',backGround: Colors.red,page: AuthPage(false)),
              MenuButton(iconColor: Colors.white,icon: Icons.padding,labelText: 'Note',backGround: Colors.pink,page: AuthPage(true)),
              MenuButton(iconColor: Colors.white,icon: Icons.food_bank,labelText: 'Deliver',backGround: Colors.green,page: LoginPage()),
              MenuButton(iconColor: Colors.white,icon: Icons.car_rental,labelText: 'Cab',backGround: Colors.blue,page: LoginPage()),
            ],

          ),
          SizedBox(height: 10,),
           BottomAdds()
          ],
        ),
      ),
    )
    );
  }
}
