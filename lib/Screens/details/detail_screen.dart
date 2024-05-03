import 'package:exam_e_commers/Screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/globallist.dart';

class detailscreen extends StatefulWidget {
  const detailscreen({super.key});

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          detailsmethod(
            name: productlist[selectedindex]['name'],
            price: productlist[selectedindex]['price'],
            image: productlist[selectedindex]['image'],
          ),
        ],
      ),
    );
  }

  Widget detailsmethod(
      {required String image, required String name, required int price}) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              'About this Menu',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(color: Colors.grey, width: 1),
              ),
            ),
            child: Image.asset(
              productlist[selectedindex]['image'],
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(top: 15, left: 15),
              child: Text(
                productlist[selectedindex]['name'],
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  'Rs.${price.toString()}',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  'Description :',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  'A burger is a patty of ground beef grilled \nand placed between two halves of a bun.\nSlices of raw onion,lettuce, bacon,\nmayonnaise,and other ingredients add flavor.',
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              bool status = false;
              int index = 0;

              for(int i =0; i <cartList.length; i++)
                {
                  if(cartList[i]['name'] == productlist[selectedindex]['name'])
                    {
                      index = i;
                      status = true;
                    }
                }
              if(status)
                {
                  cartList[index]['category']++;
                }
              else
                {
                  cartList.add(productlist[selectedindex]);
                }
              Navigator.of(context).pushNamed('/cart');
            },
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 113),
                  height: 75,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Center(
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
