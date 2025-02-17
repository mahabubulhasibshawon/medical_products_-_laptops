
import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  const CategoryChip({required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Chip(
        label: Text(label),
        labelStyle: TextStyle(color: isSelected? Colors.white : Colors.black),
        backgroundColor: isSelected ? Colors.green : Colors.white,
      ),
    );
  }
}