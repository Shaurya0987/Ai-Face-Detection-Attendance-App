import 'package:flutter/material.dart';

Widget dropDownMenuContainer({
  required String dropDownValue,
  required List<String> items,
  required ValueChanged<String> onChanged,
}) {
  return Container(
    height: 60,
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 12),
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(13),
    ),
    child: DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: dropDownValue,
        isExpanded: true,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Center(
              child: Text(
                item,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        }).toList(),
        onChanged: (value) {
          if (value != null) {
            onChanged(value);
          }
        },
      ),
    ),
  );
}
