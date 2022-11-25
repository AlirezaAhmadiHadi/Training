import 'package:flutter/material.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class Page5 extends StatelessWidget {
  Page5({super.key});

  final List<dynamic> rows = [
    ['یک ماه و سی روز', '۰۰/۱۱/۲۱', '۱۰/۹۰۰'],
    ['یک روزه', '۰۰/۱۱/۲۱', '۱۰/۹۰۰'],
    ['سه روزه', '۰۰/۱۱/۲۱', '۱۰/۹۰۰'],
    ['سه روزه', '۰۰/۱۱/۲۱', '۱۰/۹۰۰'],
    ['سه روزه', '۰۰/۱۱/۲۱', '۱۰/۹۰۰'],
    ['سه روزه', '۰۰/۱۱/۲۱', '۱۰/۹۰۰'],
    ['سه روزه', '۰۰/۱۱/۲۱', '۱۰/۹۰۰'],
    ['سه روزه', '۰۰/۱۱/۲۱', '۱۰/۹۰۰'],
    ['سه روزه', '۰۰/۱۱/۲۱', '۱۰/۹۰۰'],
    ['سه روزه', '۰۰/۱۱/۲۱', '۱۰/۹۰۰'],
    ['سه روزه', '۰۰/۱۱/۲۱', '۱۰/۹۰۰'],
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
        margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                margin: const EdgeInsets.only(top: 30, bottom: 5),
                color: const Color.fromARGB(255, 102, 99, 99),
                height: 40,
                child: Row(
                  children: const [
                    Expanded(
                      child: Center(
                        child: Text(
                          'عنوان',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      child: Center(
                        child: Text(
                          'تاریخ خرید',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 62,
                      child: Center(
                        child: Text(
                          'قیمت',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 95,
                      child: Center(
                        child: Text(
                          'جزییات',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: ListView.separated(
                    // physics: const BouncingScrollPhysics(),
                    itemCount: rows.length,
                    separatorBuilder: (context, index) {
                      return const Divider(color: Colors.white, height: 1);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(top: 5, bottom: 5),
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 7, left: 4),
                                      child: const Icon(
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
                              ),
                            ),
                            SizedBox(
                              width: 90,
                              child: Center(
                                child: Text(
                                  rows[index][1].toString(),
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 62,
                              child: Center(
                                child: Text(
                                  rows[index][2].toString(),
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 95,
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.navigate_next,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}