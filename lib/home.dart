import 'package:flutter/material.dart';

import 'pages/page_1.dart';
import 'pages/page_2.dart';
import 'pages/page_3.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 10, 14, 49),
        appBar: AppBar(
          title: const Text("Training..."),
        ),
        body: Container(
          padding:
              const EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 15),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: <Widget>[
                Container(
                    padding:
                        const EdgeInsets.only(top: 20, right: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            child: const Text("Page 1"),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Page1()));
                            }),
                        // const Spacer(),
                        ElevatedButton(
                            child: const Text('Page 2'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Page2()));
                            }),
                        // const Spacer(),
                        ElevatedButton(
                            child: const Text('Page 3'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Page3()));
                            })
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
