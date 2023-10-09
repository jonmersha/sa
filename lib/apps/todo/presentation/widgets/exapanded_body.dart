import 'package:flutter/material.dart';

class ExpandedBody extends StatelessWidget {
  final Widget child;
  const ExpandedBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0), topRight: Radius.circular(50))),
        child: SingleChildScrollView(child: child),
      ),
    ));
  }
}
