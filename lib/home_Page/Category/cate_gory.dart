import 'package:flutter/material.dart';

class Cate_gory extends StatefulWidget {
  const Cate_gory({Key? key}) : super(key: key);

  @override
  State<Cate_gory> createState() => _Cate_goryState();
}

class _Cate_goryState extends State<Cate_gory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 80,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          CategoryProducts(
            press: () {},
            image: 'assets/img_3.png',
            text: 'GIFT CARD',
          ),
          const SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: 'assets/img_1.png',
            text: 'MEN',
          ),
          const SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: "assets/img.png",
            text: 'WOMEN',
          ),
          const SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: "assets/img_2.png",
            text: 'KIDS',
          ),
          const SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: "assets/img_4.png",
            text: 'FOOTWEAR',
          ),
          const SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: "assets/img_5.png",
            text: 'BOTTLE',
          ),
          const SizedBox(
            width: 20,
          ),
        ]),
      ),
    );
  }
}

class CategoryProducts extends StatelessWidget {
  const CategoryProducts(
      {Key? key, required this.image, required this.text, required this.press})
      : super(key: key);
  final String image, text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: press,
        child: Container(
          child: Chip(
            backgroundColor: Colors.pinkAccent,
            label: Row(
              children: [
                Image.asset(
                  image,
                  height: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
