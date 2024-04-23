import 'package:e_commerce_app/utils/Colors.dart';
import 'package:flutter/material.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed('/home');
        },
        child:
            Container(
              height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                      darkcolor,
                      Colors.white
                    ]
                  ),
                ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/image/Logo.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text('   SD Sons',style: TextStyle(
                    color: Colors.white,fontSize: 30,
                    fontWeight: FontWeight.bold,
                    height: -0.5
                  ),),
                ],
              ),
              ),

      ),
    );
  }
}
