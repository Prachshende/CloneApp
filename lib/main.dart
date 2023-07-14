
import 'package:flutter/material.dart';

import 'home_Page/shoppingPage.dart';
import 'loginPage/loginBottom.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LogoinBottomsheet(),
      routes: {
        ShoppingHomePage.routeName: (context) =>ShoppingHomePage()
      },
    );
  }
}
