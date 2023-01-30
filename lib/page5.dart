import "main.dart";
import 'page4.dart';
import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 5'),
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
                    "Go to Page 4",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Page4()),
                    );
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            // SizedBox(
            //   width: 200,
            //   height: 50,
            //   child: ElevatedButton(
            //       child: const Text(
            //         "Go to Page 4",
            //         style: TextStyle(fontSize: 16),
            //       ),
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(builder: (context) => const Home()),
            //         );
            //       }),
            // ),
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
