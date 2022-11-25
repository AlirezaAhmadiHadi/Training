import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  Page5({super.key});

  final List<dynamic> rows = [
    [
      'سی و پنج روزه',
      '۰۰/۱۱/۲۱',
      '۱۰/۹۰۰',
    ],
    [
      'یک روزه',
      '۰۰/۱۱/۲۱',
      '۱۰/۹۰۰',
    ],
    ['سه روزه', '۰۰/۱۱/۲۱', '۱۰/۹۰۰'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 14, 49),
      appBar: AppBar(
        title: const Text("Page 5"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  color: const Color.fromARGB(255, 102, 99, 99),
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'عنوان',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'تاریخ خرید',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'قیمت',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'جزییات',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: rows.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: const EdgeInsets.only(right: 6),
                        margin: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Icon(
                                    Icons.beenhere_outlined,
                                    color: Colors.red,
                                    size: 16,
                                  ),
                                ),
                                Text(
                                  rows[index][0].toString(),
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              rows[index][1].toString(),
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              rows[index][2].toString(),
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.navigate_next,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            )),
      ),
    );
  }
}
