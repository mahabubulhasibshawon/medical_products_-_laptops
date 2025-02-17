import 'package:flutter/material.dart';
import 'package:medical_products_menu/screens/laptop_listing_screen/product_listing_screen.dart';
import 'package:medical_products_menu/screens/med_kops_screen.dart';

import 'screens/process_transaction_screen/process_transaction_screen.dart';
import 'screens/scanner_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: ProductListingScreen(),
    );
  }
}
