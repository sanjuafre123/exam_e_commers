import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Column category_method() {
  return Column(
    children: [
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 15),
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300, width: 1),
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                image: AssetImage('assets/ordinary.jpg'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 15),
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300, width: 1),
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/taco.jpg'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 15),
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300, width: 1),
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/drink.jpeg'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 15),
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300, width: 1),
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/pizz.jpg'),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

