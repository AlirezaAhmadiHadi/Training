import 'package:flutter/material.dart';

import 'pages/page_1.dart';
import 'pages/page_2.dart';
import 'pages/page_3.dart';
import 'pages/page_4.dart';
import 'pages/page_5.dart';
import 'pages/page_6.dart';

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
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 5),
              height: 30,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text(
                  "Get Start",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ElevatedButton(
              child: const Text("Small Profile"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Page1(),
                  ),
                );
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              height: 30,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text(
                  "Table",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: const Text('with Widget Table'),
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
                  child: const Text('without Widget Table'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Page3(),
                      ),
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: const Text("listview.separated"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page5(),
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text("Simple Listview"),
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
            ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              height: 30,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text(
                  "Ful Page",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ElevatedButton(
              child: const Text("Music List"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page6(),
                  ),
                );
              },
            ),
              
          ],
        )),
    );
  }
}
