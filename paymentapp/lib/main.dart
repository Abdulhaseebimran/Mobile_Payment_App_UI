import 'package:flutter/material.dart';
import 'package:paymentapp/constant/colors.dart';
import 'package:paymentapp/screens/balance.dart';
import 'package:paymentapp/screens/first_page.dart';
import 'package:paymentapp/screens/home_page.dart';
import 'package:paymentapp/screens/home_tab.dart';
import 'package:paymentapp/screens/login_page.dart';
import 'package:paymentapp/screens/notification.dart';
import 'package:paymentapp/screens/offers.dart';
import 'package:paymentapp/screens/profile.dart';
import 'package:paymentapp/screens/recieve_money.dart';
import 'package:paymentapp/screens/rewards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        primaryColor: const Color(0x0fb8b8b8),
        brightness: Brightness.dark  
      ),
      home: const FirstPage(),
     );    
  }
}
