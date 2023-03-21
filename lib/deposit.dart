import 'package:flutter/material.dart';

class DepositMoneyScreen extends StatefulWidget {
  @override
  _DepositMoneyScreenState createState() => _DepositMoneyScreenState();
}

class _DepositMoneyScreenState extends State<DepositMoneyScreen> {
  String _cardNumber = '';
  String _expiryDate = '';
  String _cvv = '';
  double _amount = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deposit Money'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Card Number',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  _cardNumber = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter card number',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Expiry Date',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  _expiryDate = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter expiry date',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'CVV',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  _cvv = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter CVV',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Amount',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _amount = double.parse(value);
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter amount',
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                //TODO: Deposit money into student's wallet
                Navigator.pop(context);
              },
              child: Text('Deposit Money'),
            ),
          ],
        ),
      ),
    );
  }
}
