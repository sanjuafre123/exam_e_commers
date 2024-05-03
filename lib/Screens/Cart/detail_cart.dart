import 'package:exam_e_commers/Screens/home/home_screen.dart';
import 'package:exam_e_commers/utils/globallist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class cartscreen extends StatefulWidget {
  const cartscreen({super.key});

  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
  @override
  void initState() {
    // TODO: implement initState
    for(int i=0; i<cartList.length; i++)
      {
        Total = (Total+cartList[i]['price']).toDouble();
      }
    super.initState();
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          height: 100,
          color: Colors.black,
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('checkout = $Total',style: TextStyle(color: Colors.white,fontSize: 25),),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('CartScreen'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ...List.generate(
              cartList.length,
              (index) => cartmethod(index),
            ),

          ],
        ),
      ),
    );
  }

  Container cartmethod(int index) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 225,
      width: 450,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    height: 225,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Image.asset(cartList[index]['image'])),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        'ordinary',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade500),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20, top: 5),
                      height: 15,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: const Center(
                        child: Text(
                          '15% OFF',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        'Rs.${cartList[index]['price']}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 55, left: 15),
                      height: 50,
                      width: 145,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 48,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                topLeft: Radius.circular(15),
                              ),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (cartList[index]['category'] > 1) {
                                    cartList[index]['category']--;
                                    Total = (Total - cartList[index]['price']).toDouble();
                                  }
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                size: 20,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 13.5, top: 12),
                            child: Column(
                              children: [
                                Text(cartList[index]['category'].toString()),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 17),
                            height: 50,
                            width: 48,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                            ),
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    cartList[index]['category']++;
                                    Total = (Total + cartList[index]['price']).toDouble();
                                  });
                                },
                                child: Icon(Icons.add)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        cartList[index]['category']=1;
                        cartList.removeAt(index);
                        if(cartList.length==0)
                          {
                            Total = 0;
                          }
                        else
                          {
                            Total = (Total - cartList[index]['price']).toDouble();
                          }

                      },
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, bottom: 20),
                        child: Icon(
                          Icons.delete,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
