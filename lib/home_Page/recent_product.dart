import 'package:flutter/material.dart';

class RecentProduct extends StatelessWidget {
  RecentProduct({Key? key}) : super(key: key);
  final productList = [
    {'image': 'assets/Kiara1.jpeg'},
    {'image': 'assets/2.jpg'},
    {'image': 'assets/6.jpg'},
    {'image': 'assets/3.webp'},
    {'image': 'assets/4.jpg'},
    {'image': 'assets/6.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: GridView.builder(
          itemCount: productList.length,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          ),
          itemBuilder: (BuildContext context, int index) {
            return SaleProduct(
              imageSale: productList[index]['image'],
            );
          }),
    );
  }
}

class SaleProduct extends StatelessWidget {
  final imageSale;
  SaleProduct({
    this.imageSale,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.5),
            child: Card(
              elevation: 5,
              child: Image.asset(imageSale),
            ),
          ),
        ],
      ),
    );
  }
}
