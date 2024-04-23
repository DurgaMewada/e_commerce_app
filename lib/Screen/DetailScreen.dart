import 'package:e_commerce_app/utils/Globals.dart';
import 'package:e_commerce_app/utils/Lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/Colors.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
            size: 25,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/cart');
              },
              child: Icon(
                Icons.shopping_cart,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                image: DecorationImage(
                    image: AssetImage(productList[selectIndex]['img']),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.local_shipping_outlined,
                        color: darkcolor,
                        size: 20,
                      ),
                      Text(
                        ' Free shipping ...',
                        style: TextStyle(
                          fontSize: 10,
                          color: darkcolor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '${productList[selectIndex]['name']}',
                    style: TextStyle(
                      color: Colors.green.shade900,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 28,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '⭐ 4.7',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 28,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey.shade200,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '${productList[selectIndex]['categories']} ',
                          style: TextStyle(
                            color: Colors.green.shade900,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 38,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Rs',
                              style: TextStyle(
                                  color: Colors.green.shade900,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: ' ${productList[selectIndex]['price']}',
                              style: TextStyle(
                                  color: Colors.green.shade900,
                                  fontSize: 23,
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
                  Text(
                    ' Description ',
                    style: TextStyle(
                      color: Colors.green.shade900,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 430,
                      child: Text(
                          'Discover fresh produce, pantry staples, and more with our grocery app. Shop conveniently for everything from fruits and vegetables to pasta and snacks. Get recipes, discounts, and quick delivery at your fingertips. Simplify your grocery shopping experience today!'),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(Icons.favorite,size: 30,color: Colors.red,),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/home');
                      int index = 0;
                      bool status = false;
                      for (int i = 0; i < cartList.length; i++) {
                        if (cartList[i]['name'] ==
                            productList[selectIndex]['name']) {
                          index = 1;
                          status = true;
                        }
                      }
                      if (status) {
                        cartList[index]['quantity']++;
                      } else {
                        cartList.add(productList[selectIndex]);
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: darkcolor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Add to Bag',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Similar Product',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                      fontSize: 12,
                      color: darkcolor,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Wrap(
                  children: List.generate(
                    productList.length,
                    (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: similarProduct(
                          name: productList[index]['name'],
                          img: productList[index]['img'],
                          dis: productList[index]['dis'],
                          price: productList[index]['price'],
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container similarProduct({
    required String name,
    required String img,
    required String dis,
    required int price,
  }) {
    return Container(
      height: 250,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(0, 2),
            spreadRadius: 5,
            blurRadius: 5,
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            width: 170,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Rs $price',
                        style: TextStyle(
                          color: darkcolor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        )),
                    TextSpan(
                        text: ' / kg\n',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        )),
                    TextSpan(
                      text: '$dis Off ',
                      style: TextStyle(
                        color: darkcolor,
                        fontSize: 10,
                      ),
                    ),
                    TextSpan(
                      text: 'Upto 5 kg ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 6,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
