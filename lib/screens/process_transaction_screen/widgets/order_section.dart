import 'package:flutter/material.dart';

class OrderSection extends StatelessWidget {
  const OrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 10,
          children: const [
            Text(
              'Your Order',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '3 items',
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const OrderItem(),
      ],
    );
  }
}

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.orange[100],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.network('https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/9/29/37968f66-44e4-49df-a7e9-b73db3515ce0.jpg'),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hi - D5000 Vitamin',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      '\$',
                      style: TextStyle(color: Colors.green),
                    ),
                    Text(
                      ' 2.10 /strip',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              spacing: 10,
              children: [
                Icon(Icons.remove, color: Colors.green, size: 16),
                Text(
                  '1',
                  style: TextStyle(color: Colors.green),
                ),
                Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green
                    ),
                    child: Icon(Icons.add, color: Colors.white, size: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
