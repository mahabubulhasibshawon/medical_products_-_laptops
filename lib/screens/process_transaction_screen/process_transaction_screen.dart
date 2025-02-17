import 'package:flutter/material.dart';
import 'package:medical_products_menu/screens/widgets/button.dart';
import 'widgets/order_section.dart';
import 'widgets/prescription_details.dart';
import 'widgets/purchase_button.dart';
import 'widgets/summary_section.dart';
import 'widgets/voucher_card.dart';

class ProcessTransactionScreen extends StatelessWidget {
  const ProcessTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Process Transaction',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VoucherCard(),
              const SizedBox(height: 20),
              const PrescriptionDetails(),
              const SizedBox(height: 20),
              const OrderSection(),
              const SizedBox(height: 20),
              const SummarySection(),
              const SizedBox(height: 20),
              Button(text: 'Purchase Now',),
            ],
          ),
        ),
      ),
    );
  }
}