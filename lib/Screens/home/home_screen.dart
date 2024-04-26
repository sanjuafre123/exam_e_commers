import 'package:exam_e_commers/utils/globallist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'componet/Container.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Homepage',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.grey.shade300,
        elevation: 1,
        shadowColor: Colors.grey,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 15),
                height: 55,
                width: 333,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.search,
                        size: 28,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        'search...',
                        style: TextStyle(
                            fontSize: 18, color: Colors.grey.shade500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 160),
                      child: Icon(Icons.menu),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 15),
                    height: 140,
                    width: 333,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300, width: 1),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/burger_offer.jpg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  'Find by category',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 130, top: 10),
                      child: Text(
                        'see all',
                        style: TextStyle(fontSize: 17),
                      )),
                ],
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: category_method(),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: [
                    ...List.generate(
                      productlist.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedindex = index;
                            Navigator.of(context).pushNamed('/detail');
                          });
                        },
                        child: burger_method(
                            name: productlist[index]['name'],
                            image: productlist[index]['image'],
                            price: productlist[index]['price']),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container burger_method(
      {required String name, required String image, required String price}) {
    return Container(
      margin: EdgeInsets.only(top: 15, left: 15),
      height: 220,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Container(
            child: Image.asset(
              image,
              height: 120,
              width: 120,
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  name,
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  price,
                  style: TextStyle(
                      color: Colors.amber.shade900,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50, top: 5),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ),
              Container(margin: EdgeInsets.only(top: 5), child: Text('4.3')),
            ],
          ),
        ],
      ),
    );
  }
}

int selectedindex = 0;
