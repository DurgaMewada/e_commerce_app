import 'package:e_commerce_app/utils/Colors.dart';
import 'package:e_commerce_app/utils/Globals.dart';
import 'package:e_commerce_app/utils/Lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkcolor,
        leading: Icon(
          Icons.menu,
          size: 25,
          color: Colors.white,
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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: darkcolor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.supervised_user_circle_outlined,
                                      size: 20,color: Colors.white,),
                                    Text(' Hello user ', style: TextStyle(
                                        color: Colors.white
                                    ),)
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 280,
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Icon(
                                          Icons.search,
                                          color: Colors.grey,
                                          size: 25,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'Search for Fruits,Vegetables,groce..',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.notifications_active_outlined,
                                    size: 25,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 120, left: 20, right: 20),
                                    height: 150,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('asset/image/Template1.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 120, left: 20, right: 20),
                                    height: 150,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('asset/image/Template2.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 120, left: 20, right: 20),
                                    height: 150,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('asset/image/Template3.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ],
                                ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5, left: 10),
                          height: 8,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: darkcolor,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          height: 8,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          height: 8,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          height: 8,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Categories',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/image/Fruits.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  'Fruits',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/image/Bakery.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  'Bakery',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'asset/image/Vegetables.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  'Vegetables',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('asset/image/Dairy.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  'Dairy',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ]),
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
                            'Special Deal ',
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
                                (index) =>
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                      onTap: () {
                                        selectIndex = index;
                                        Navigator.of(context).pushNamed(
                                            '/detail');
                                      },
                                      child: rowOfProduct(
                                        name: productList[index]['name'],
                                        img: productList[index]['img'],
                                        dis: productList[index]['dis'],
                                        price: productList[index]['price'],
                                      )),
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: darkcolor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/fav');
                  },
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/msg');
                  },
                  child: Icon(
                    Icons.message_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container rowOfProduct({
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
              Text.rich(TextSpan(children: [
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
                  ),),
                TextSpan(
                  text: 'Upto 5 kg ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 6,
                  ),),
              ],),),
            ],
          )
        ],
      ),
    );
  }
}
