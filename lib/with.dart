import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class WithdrawMoneyScreen extends StatelessWidget {
  final TextEditingController amountController = TextEditingController();
  final TextEditingController paymentController = TextEditingController();

  void withdrawMoney(BuildContext context) {
    final double amount = double.tryParse(amountController.text) ?? 0.0;
    final String paymentInfo = paymentController.text;

    // Validate input fields
    if (amount <= 0) {
      // Show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter a valid amount.'),
        ),
      );
      return;
    }

    if (paymentInfo.isEmpty) {
      // Show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter your payment information.'),
        ),
      );
      return;
    }

    // Withdraw money from child's wallet balance
    final ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
        newBalance = // Subtract the amount from the child's wallet balance
        // Update transaction history
        // Show a success message
        ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Withdrawal successful.'),
      ),
    );

    // Navigate back to Home screen
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Withdraw Money'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Amount',
                ),
              ),
              TextFormField(
                controller: paymentController,
                decoration: const InputDecoration(
                  labelText: 'Payment Information',
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => withdrawMoney(context),
                child: const Text('Withdraw'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
