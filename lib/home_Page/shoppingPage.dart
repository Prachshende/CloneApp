import 'package:flutter/material.dart';
import 'package:myntra_app/home_Page/Category/cate_gory.dart';
import 'package:myntra_app/home_Page/recent_product.dart';

import '../loginPage/LoginItem.dart';

class ShoppingHomePage extends StatelessWidget {
  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: const Text('Myntra'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
              )),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag,
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              // decoration: BoxDecoration(
              //     border: Border.all(color: Colors.black,
              //       width: 2.5,
              //     ),
              //     borderRadius: BorderRadius.circular(30)
              // ),
              child: Image.asset("assets/img_10.png"),
            ),
            ListTile(
              title: const Text(
                'Men',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text(
                'Women',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text(
                'Kids',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text(
                'Home & Living',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text(
                'Beauty',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const Cate_gory(),
            SizedBox(
              height: 34,
            ),
            const Product_Slider(),
            const SizedBox(
              height: 34,
            ),
            Container(
              height: 300,
              child: RecentProduct(),
            )
          ],
        ),
      ),
    );
  }
}
