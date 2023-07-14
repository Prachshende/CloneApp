import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Product_Slider extends StatefulWidget {
  const Product_Slider({Key? key}) : super(key: key);

  @override
  State<Product_Slider> createState() => _Product_SliderState();
}

class _Product_SliderState extends State<Product_Slider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,bottom: 15,left: 15),
      child: Container(
        height: 250,
        child: Carousel(
          images: const [
            AssetImage('assets/img_10.png'),
            AssetImage('assets/img_8.png'),
            AssetImage('assets/sale2.png'),
            AssetImage('assets/img_9.png'),
          ],
          borderRadius: true,
          radius: const Radius.circular(20),
          dotBgColor: Colors.black,
          animationCurve: Curves.fastOutSlowIn,
          dotIncreasedColor: Colors.white,
          animationDuration: const Duration(
            milliseconds: 800,
          ),
        ),
      ),
    );
  }
}
