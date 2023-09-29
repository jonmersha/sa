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
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hi, Regassa!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '${dayName}:${now.day}, ${now.month}, ${now.year}',
                style: TextStyle(color: Colors.grey[200]),
              ),
              Container(
                decoration: BoxDecoration(),
              )
            ],
          ),

          //Notifications
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
        ],
      ),
    );
  }
}
