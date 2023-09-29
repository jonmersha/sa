import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticons;
  final String emoText;
  const EmoticonFace({Key? key,required this.emoticons,required this.emoText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[600],
                borderRadius: BorderRadius.circular(12)
          ),
          padding: EdgeInsets.all(12),
          child: Text(emoticons),
        ),
        SizedBox(height: 10,),
        Text(emoText,style: TextStyle(color: Colors.white),)
      ],
    );
  }
}
