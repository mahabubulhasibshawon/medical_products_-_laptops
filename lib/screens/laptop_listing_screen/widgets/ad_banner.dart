import 'package:flutter/material.dart';

class AdBanner extends StatelessWidget {
  const AdBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: const Row(
        children: [
          Text('Adreader', style: TextStyle(color: Colors.blue),),
          Text(' advertisement'),
          Spacer(),
          Text('1/1'),
        ],
      ),
    );
  }
}