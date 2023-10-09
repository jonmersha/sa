import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required TextEditingController emailController,
  }) : _emailController = emailController;

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          // color: Colors.blue, // Border color
          width: 1.0,
        ),
        // color: Colors.blueAccent[100]
      ),
      child: TextField(
        controller: _emailController,
        decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.email_outlined,
              color: Colors.deepPurple,
            ),
            hintText: 'Email',
            hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
            border: InputBorder.none),
      ),
    );
  }
}
