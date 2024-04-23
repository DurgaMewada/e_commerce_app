import 'package:e_commerce_app/Screen/CartScreen.dart';
import 'package:e_commerce_app/Screen/DetailScreen.dart';
import 'package:e_commerce_app/Screen/HomeScreen.dart';
import 'package:e_commerce_app/Screen/Orderplaced.dart';
import 'package:e_commerce_app/Screen/Payment.dart';
import 'package:e_commerce_app/Screen/SplashScreen.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => SplashPage(),
        '/home':(context) => HomePage(),
        '/cart':(context) => CartPage(),
        '/detail':(context) => DetailPage(),
        '/payment':(context) => PaymentPage(),
        '/sucess':(context) => SuccesPage(),
      },
    );
  }
}
