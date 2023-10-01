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

   final user=FirebaseAuth.instance.currentUser!;
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                'Hi, ${user.email==null?user?.displayName.toString():user?.email}!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5,),
              Text(
                '$dayName:${now.day}, ${now.month}, ${now.year}',
                style: TextStyle(color: Colors.grey[200]),
              ),
              Container(
                decoration: BoxDecoration(),
              )
            ],
          ),

          //Notifications
          Row(

            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(12),
                child: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
             const SizedBox(width: 10,),
              GestureDetector(
                onTap: (){
                  FirebaseAuth.instance.signOut();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
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
