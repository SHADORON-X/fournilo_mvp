// screens/orders_screen.dart
import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  final List<String> commandes = [
    "Baguette – 6h00",
    "Croissant – 6h30",
    "Pain complet – 7h00",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Commandes du jour")),
      body: ListView.builder(
        itemCount: commandes.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(commandes[index]));
        },
      ),
    );
  }
}
