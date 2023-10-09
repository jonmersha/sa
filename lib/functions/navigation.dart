import 'package:flutter/material.dart';

void pushTo(context, page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

void popFrom(context, page) {
  Navigator.pop(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}
