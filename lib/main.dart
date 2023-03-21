import 'package:flutter/material.dart';
import 'package:ws/add.dart';
import 'package:ws/deposit.dart';
import 'package:ws/sign.dart';
import 'package:ws/with.dart';

import 'home.dart';
import 'log.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      initialRoute: '/signup',
      routes: {
        '/signup': (context) => SignUpPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => const WalletHomePage(),
        '/withdraw': (context) => WithdrawMoneyScreen(),
        '/Deposit': (context) => DepositMoneyScreen(),
        '/add_transaction': (context) => AddExpenseScreen(),
      },
    );
  }
}
