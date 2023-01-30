//import 'dart:ffi';
import 'package:moving_through_screens/Page3.dart';

import "main.dart";
import 'package:flutter/material.dart';
//import 'package:moving_through_screens/main.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Color.fromARGB(255, 22, 82, 90),
            fontWeight: FontWeight.bold,
            fontSize: 20),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
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
                    "Go to Page 1",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  child: const Text(
                    "Go to Page 3",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Page3()),
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
          );
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
