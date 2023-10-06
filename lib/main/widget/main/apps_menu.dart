import 'package:awashderash/apps/comming_soon.dart';
import 'package:awashderash/apps/todo/presentation/pages/todo_home.dart';
import 'package:awashderash/main/widget/button.dart';
import 'package:awashderash/main/widget/main/slid_ads.dart';
import 'package:flutter/material.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: Theme.of(context).colorScheme.background,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Apps',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MenuButton(
                  iconColor: Colors.white,
                  icon: Icons.menu_book,
                  labelText: 'Reading',
                  backGround: Colors.indigo,
                  page: CommingSoon(),
                ),
                MenuButton(
                    iconColor: Colors.white,
                    icon: Icons.bus_alert,
                    labelText: 'Travel',
                    backGround: Colors.lightGreen,
                    page: CommingSoon()),
                MenuButton(
                    iconColor: Colors.white,
                    icon: Icons.hotel,
                    labelText: 'Hotel',
                    backGround: Colors.indigo,
                    page: CommingSoon()),
                MenuButton(
                    iconColor: Colors.white,
                    icon: Icons.shopping_cart_outlined,
                    labelText: 'Gebeya',
                    backGround: Colors.redAccent,
                    page: CommingSoon()),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MenuButton(
                    iconColor: Colors.white,
                    icon: Icons.school,
                    labelText: 'School',
                    backGround: Colors.orange,
                    page: CommingSoon()),
                MenuButton(
                    iconColor: Colors.white,
                    icon: Icons.bus_alert,
                    labelText: 'Travel',
                    backGround: Colors.deepPurpleAccent,
                    page: CommingSoon()),
                MenuButton(
                    iconColor: Colors.white,
                    icon: Icons.account_balance,
                    labelText: 'Bank',
                    backGround: Colors.indigo,
                    page: CommingSoon()),
                MenuButton(
                    iconColor: Colors.white,
                    icon: Icons.storage,
                    labelText: 'Bonda',
                    backGround: Colors.deepOrange,
                    page: CommingSoon()),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MenuButton(
                    iconColor: Colors.white,
                    icon: Icons.task_outlined,
                    labelText: 'ToDo',
                    backGround: Colors.red,
                    page: TodoHome()),
                MenuButton(
                    iconColor: Colors.white,
                    icon: Icons.padding,
                    labelText: 'Note',
                    backGround: Colors.pink,
                    page: CommingSoon()),
                MenuButton(
                    iconColor: Colors.white,
                    icon: Icons.food_bank,
                    labelText: 'Deliver',
                    backGround: Colors.green,
                    page: CommingSoon()),
                MenuButton(
                    iconColor: Colors.white,
                    icon: Icons.car_rental,
                    labelText: 'Cab',
                    backGround: Colors.blue,
                    page: CommingSoon()),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const BottomAdds()
          ],
        ),
      ),
    ));
  }
}
