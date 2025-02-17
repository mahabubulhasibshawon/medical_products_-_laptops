import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color color;
  final String text;
  final Color textcolor;
  const Button({super.key, this.color = Colors.green,this.textcolor = Colors.white, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(text, style:
        TextStyle(color: textcolor),),
      ),
    );
  }
}
