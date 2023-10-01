import 'package:flutter/material.dart';

class CommingSoon extends StatelessWidget {
  const CommingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue,
            child: Image.asset('asset/cm.jpeg',height: 500,width: double.infinity),
          ),
        ),
      ),
    );
  }
}
