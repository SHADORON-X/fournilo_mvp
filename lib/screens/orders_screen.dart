import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orders = ['Whole wheat bread', 'Croissant x12', 'Baguette x5'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('📋 Today\'s Orders'),
        backgroundColor: Colors.brown[400],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.orange[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(orders[index]),
              trailing: const Icon(Icons.check_circle_outline),
            ),
          );
        },
      ),
    );
  }
}
