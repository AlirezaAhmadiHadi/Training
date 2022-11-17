import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 14, 49),
      appBar: AppBar(
        title: const Text("Page 3"),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              // padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.navigate_before,
                        color: Colors.white,
                      )),
                  Container(
                    margin: const EdgeInsets.only(right: 3),
                    child: const Text(
                      "سابقه خرید",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Container(
                color: const Color.fromARGB(255, 102, 99, 99),
                height: 40,
                // width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('عنوان',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                    Text('تاریخ خرید',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                    Text('قیمت',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                    Text('جزییات',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 3),
              margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: Icon(
                          Icons.beenhere_outlined,
                          color: Colors.red,
                          size: 16,
                        ),
                      ),
                      Text("یک روزه",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ))
                    ]),
                    const Text('00/11/21',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                    const Text('10/900',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.navigate_next,
                                color: Colors.white)))
                  ]),
            ),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const Divider(
                  color: Color.fromARGB(255, 71, 71, 71),
                )),
            Container(
              padding: const EdgeInsets.only(right: 3),
              margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: Icon(
                          Icons.beenhere_outlined,
                          color: Colors.red,
                          size: 16,
                        ),
                      ),
                      Text("یک روزه",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ))
                    ]),
                    const Text('00/11/21',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                    const Text('10/900',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.navigate_next,
                                color: Colors.white)))
                  ]),
            ),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const Divider(
                  color: Color.fromARGB(255, 71, 71, 71),
                )),
            Container(
              padding: const EdgeInsets.only(right: 3),
              margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: Icon(
                          Icons.beenhere_outlined,
                          color: Colors.red,
                          size: 16,
                        ),
                      ),
                      Text("یک روزه",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ))
                    ]),
                    const Text('00/11/21',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                    const Text('10/900',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.navigate_next,
                                color: Colors.white)))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
