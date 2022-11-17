import 'package:flutter/material.dart';

import 'pages/page_1.dart';
import 'pages/page_2.dart';
import 'pages/page_3.dart';
import 'pages/page_4.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 14, 49),
      appBar: AppBar(
        title: const Text("Training..."),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: const Text("Page 1"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Page1(),
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text('Page 2'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Page2(),
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text('Page 3'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Page3(),
                      ),
                    );
                  },
                )
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  child: const Text("Page 4"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Page4(),
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
