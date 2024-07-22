import 'package:flutter/material.dart';
import 'package:north_star_metrics_01/Screens/WithdrawMoneyWithBhim/ui/WithdrawMoneyWithBhim.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WithdrawMoneyWithBhim(),
    );
  }
}
