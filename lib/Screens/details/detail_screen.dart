import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 10),
            child: Text(
              'About this Menu',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
                child: Image.asset('assets/bg.png'),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 15),
                    child: Text(
                      'Burger With Meat',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 25,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 15),
                    child: Text(
                      'Rs.2230',
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
                    margin: EdgeInsets.only(top: 15,left: 15),
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
                    margin: EdgeInsets.only(top: 15,left: 15),
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
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 113),
                    height: 75,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black
                    ),
                    child: Center(
                      child: Text(
                        'Add to Cart',style: TextStyle(color: Colors.white,fontSize: 20),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
