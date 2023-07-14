import 'package:flutter/material.dart';
import '../home_Page/recent_product.dart';
import '../home_Page/shoppingPage.dart';

class LogoinBottomsheet extends StatefulWidget {
  static const routeName = '/';
  const LogoinBottomsheet({Key? key}) : super(key: key);

  @override
  State<LogoinBottomsheet> createState() => _LogoinBottomsheetState();
}

class _LogoinBottomsheetState extends State<LogoinBottomsheet> {
  final TextEditingController _mobileController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void dispose() {
    _mobileController.dispose();
    super.dispose();
  }

  void _checkButtonEnabled() {
    setState(() {
      _isButtonEnabled = _mobileController.text.trim().length == 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Myntra'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(onPressed: () {},
              icon: const Icon(Icons.add)),
          IconButton(onPressed: () {},
              icon: const Icon(Icons.shopping_bag))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(4)),
              child: Image.asset("assets/img_9.png"),
            ),
            ListTile(
              title: const Text(
                'Men',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                // Handle category 1 selection
              },
            ),
            SizedBox(height: 10),
            ListTile(
              title: const Text(
                'Women',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
              onTap: () {
                // Handle category 2 selection
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text(
                'Kids',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
              onTap: () {
                // Handle category 3 selection
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text(
                'Home & Living',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
              onTap: () {
                // Handle category 3 selection
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text(
                'Beauty',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
              onTap: () {
                // Handle category 3 selection
              },
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: MediaQuery.of(context).size.height / 2,
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Login ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: " or ",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 13,
                    ),
                  ),
                  TextSpan(
                    text: " Signup ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 43,
              child: TextField(
                controller: _mobileController,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 13,
                ),
                onChanged: (_) => _checkButtonEnabled(),
                decoration: const InputDecoration(
                  labelText: 'Mobile Number*',
                  labelStyle: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 13,
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 10, top: 15),
                    child: Text(
                      "+91 |",
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "By Continueing, I agree to the ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11.6,
                    ),
                  ),
                  TextSpan(
                    text: "Term of use ",
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: " & ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11.6,
                    ),
                  ),
                  TextSpan(
                    text: " Privacy & policy ",
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // ContinueBtn(text: "CONTINUE",),
            ElevatedButton(
                onPressed: _isButtonEnabled
                    ? () {
                        Navigator.pushNamed(
                          context,
                          ShoppingHomePage.routeName,
                        );
                      }
                    : null,
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.pinkAccent),
                    textStyle: MaterialStateProperty.all(const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 15.5))),
                child: Container(
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  width: double.infinity,
                  height: 45,
                  // child: Text(widget.text)
                  child: const Text("CONTINUE"),
                )),
            const SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Having trouble logging in? ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.6,
                    ),
                  ),
                  TextSpan(
                    text: " Get help ",
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 300,
              child: RecentProduct(),
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
