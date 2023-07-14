import 'package:flutter/material.dart';

import 'loginBottom.dart';

class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: SafeArea(child: LogoinBottomsheet()),
    );
  }
}
