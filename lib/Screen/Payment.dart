import 'package:e_commerce_app/utils/Globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/Colors.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkcolor,
        leading: GestureDetector(
          onTap: () {
            amount=0;
            total=0;
            Navigator.of(context).pop('/home');
          },
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Payment',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.arrow_drop_down_sharp,color: darkcolor,size: 20,),
                              Text('Choose Address',style: TextStyle(
                                color: darkcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),)
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 330,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: darkcolor,
                            width: 2,
                          )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 80,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage('asset/image/Map.png'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'My Home',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                                    Row(
                                      children: [
                                        Text(
                                          '9,10 Mahadev Nagar 3 OPP Rami park\n Dindoli,Surat,Gujarat',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 100,
                          width: 330,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10),
                              ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 80,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage('asset/image/Map.png'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Other Address ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Om Nagar SB sons \n Dindoli,Surat,Gujarat',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.arrow_drop_down_sharp,color: darkcolor,size: 20,),
                              Text('Choose Payment Method',style: TextStyle(
                                color: darkcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),)
                            ],
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 330,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: darkcolor,
                              width: 2,)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 80,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage('asset/image/Onlinepay.png'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Online Payment',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 100,
                          width: 330,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 80,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage('asset/image/COD.png'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Cash on Delivery',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 2,
                          color: Colors.grey.shade200,
                        ),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                          ),
                          alignment : Alignment.centerLeft,
                          child: Row(
                            children: [
                              Text('Amount ',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                              SizedBox(width:160,),
                              Container(
                                height: 30,
                                width: 90,
                                alignment: Alignment.center,
                                child: Text('$amount',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey.shade200,
                                      width: 2
                                  )
                              )
                          ),
                          alignment : Alignment.centerLeft,
                          child: Row(
                            children: [
                              Text('Services charges',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                              SizedBox(width: 85,),
                              Container(
                                height: 30,
                                width: 90,
                                alignment: Alignment.center,
                                child: Text('\Rs 100',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color:Colors.green.shade300,
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey,
                                      width: 2
                                  )
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 3),
                                    spreadRadius: 0,
                                    blurRadius: 2),
                              ],
                              borderRadius: BorderRadius.circular(15)
                          ),
                          alignment : Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('Bill Amount',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),),
                                SizedBox(width: 120,),
                                Container(
                                  height: 30,
                                  width: 90,
                                  alignment: Alignment.center,
                                  child: Text('$total',style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),),
                                ),
                              ],
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
             Navigator.of(context).pushNamed('/sucess');
            },
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: darkcolor,
              ),
              alignment: Alignment.center,
              child: Text(
                'Place Order',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
