import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(12)),
        // padding: const EdgeInsets.all(8),
        child: const TextField(
          style: TextStyle(fontSize: 20, color: Colors.white, height: 1.5),
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
