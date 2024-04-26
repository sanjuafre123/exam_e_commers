import 'package:flutter/material.dart';

import 'Screens/Cart/detail_cart.dart';
import 'Screens/details/detail_screen.dart';
import 'Screens/home/home_screen.dart';

void main()
{
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => homescreen(),
        '/detail' : (context)=>detailscreen(),
        '/cart' : (context)=>cartscreen(),
      },
    );
  }
}
