import 'package:flutter/material.dart';

class ReusableAppBar extends StatelessWidget {
  final String logo;
  final Widget actionList;
  const ReusableAppBar(
      {super.key, required this.logo, required this.actionList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(logo), fit: BoxFit.fitHeight)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppBar(
            backgroundColor: const Color.fromARGB(0, 0, 0, 0),
            actions: [actionList],
          ),
        ],
      ),
    );
  }
}
