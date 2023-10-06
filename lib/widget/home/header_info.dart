import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    //DateTime date = DateTime(now.year, now.month, now.day);
    String dayName = DateFormat('EEE').format(DateTime.now());
    // var format = DateFormat.yMd('ar');
    // var dateString = format.format(DateTime.now());

    final user = FirebaseAuth.instance.currentUser!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, ${user.email ?? user.displayName.toString()}!',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '$dayName:${now.day}, ${now.month}, ${now.year}',
                style: TextStyle(color: Colors.grey[900]),
              ),
              Container(
                decoration: const BoxDecoration(),
              )
            ],
          ),

          //Notifications
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 8, 190, 90),
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(12),
                child: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  FirebaseAuth.instance.signOut();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 251, 18, 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
