import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final Color iconColor;
  final Color backGround;
  final String labelText;
  final IconData icon;

  const MenuButton(
      {Key? key, required this.iconColor, required this.icon, required this.labelText,  required this.backGround })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: backGround,
          ),
          child: Icon(icon, size: 40, color: iconColor,),
        ),
        SizedBox(height: 10,),
        Text(this.labelText, style: TextStyle(fontWeight: FontWeight.bold),)
      ],
    );
  }
}
