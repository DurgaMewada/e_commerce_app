
import 'package:e_commerce_app/utils/Lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/Colors.dart';
import 'package:flutter/widgets.dart';

import '../utils/Globals.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkcolor,
        leading: GestureDetector(
          onTap: () {
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
          'My Cart',
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
              scrollDirection: Axis.vertical,
              child: Column(
                children: List.generate(
                  cartList.length,
                  (index) => SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 330,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage(cartList[index]['img']),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${cartList[index]['name']}',
                                            style: TextStyle(
                                              color: Colors.green.shade900,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Rs',
                                                  style: TextStyle(
                                                      color: Colors.green.shade900,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      ' ${cartList[index]['price']}',
                                                  style: TextStyle(
                                                      color: Colors.green.shade900,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text: '/kg',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Quantity',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: darkcolor,
                                          ),
                                        ),
                                        Container(
                                          height: 40,
                                          width: 40,
                                          color: Colors.green,
                                          alignment: Alignment.center,
                                          child: Text(
                                              '${cartList[index]['quantity'].toString()}',
                                              style: TextStyle(
                                                color: Colors.white,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    cartList.removeAt(index);
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.shade200),
                                  child: Icon(
                                    Icons.delete,
                                    size: 30,
                                    color: Colors.red,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              for(int i=0;i<cartList.length;i++)
                {
                  qty=(qty+ cartList[i]['quantity']).toInt();
                  amount =(amount + cartList[i]['price']*cartList[i]['quantity']).toInt();
                }
              total =(amount+100);
            Navigator.of(context).pushNamed('/payment');
    },
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: darkcolor,
              ),
              alignment: Alignment.center,
              child: Text(
                'Check Out',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
