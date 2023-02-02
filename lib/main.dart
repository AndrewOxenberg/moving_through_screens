//import 'dart:ffi';
//TEST TO UPDATE INFO
import 'package:flutter/material.dart';
import 'page2.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => Page1();
}

class Page1 extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Page 1'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20),
        backgroundColor: Colors.white60,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  child: const Text(
                    "Go to Page 2",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Page2()),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
