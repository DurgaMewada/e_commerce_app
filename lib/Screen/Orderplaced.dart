import 'package:e_commerce_app/utils/Colors.dart';
import 'package:flutter/material.dart';
class SuccesPage extends StatefulWidget {
  const SuccesPage({super.key});

  @override
  State<SuccesPage> createState() => _SuccesPageState();
}

class _SuccesPageState extends State<SuccesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/image/PayDone.jpeg'),
                fit: BoxFit.cover,
              )
            ),
          ),

    );
  }
}
