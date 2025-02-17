import 'package:flutter/material.dart';

class PrescriptionDetails extends StatelessWidget  {
  const PrescriptionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Detail Prescription',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Name', style: TextStyle(color: Colors.grey),),
            Text(
              'Amount',
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
        PrescriptionItem(name: 'Hi - D5000 Vitamin', amount: 'x1'),
        PrescriptionItem(name: 'Samnol Tablets', amount: 'x1'),
        PrescriptionItem(name: 'Paracetamol/8mg', amount: 'x1'),
        const SizedBox(height: 12),
        Row(
          children: const [
            Icon(Icons.note, color: Colors.grey),
            SizedBox(width: 8),
            Text(
              'Check Note',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}

class PrescriptionItem extends StatelessWidget {
  final String name;
  final String amount;

  const PrescriptionItem({
    super.key,
    required this.name,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
          Text(
            amount,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}