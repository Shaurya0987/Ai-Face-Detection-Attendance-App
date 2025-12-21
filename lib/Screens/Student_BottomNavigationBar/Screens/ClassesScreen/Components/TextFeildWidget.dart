import 'package:flutter/material.dart';

class TextFeildWidget extends StatelessWidget {
  const TextFeildWidget({super.key, required this.searchController});

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: TextField(
          controller: searchController,
          textAlign: TextAlign.center, // ⭐ centers text horizontally
          textAlignVertical: TextAlignVertical.center, // ⭐ centers vertically
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.grey,size: 27,),
            hintText: "Search course code, name, instructor...",
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
            isDense: true,
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
