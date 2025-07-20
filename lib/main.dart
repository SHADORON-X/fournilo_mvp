import 'package:flutter/material.dart';
import 'screens/orders_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Fournilo',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const OrdersScreen(),
    ),
  );
}
