import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "navigation test",
      home: HomePage(),
    );
  }
}

// gitIgnore
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(builder: (context, child) {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("تنظیمات", style: TextStyle(color: Colors.white)),
                  const Padding(padding: EdgeInsets.only(bottom: 15)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Icon(
                          FontAwesomeIcons.circleUser,
                          size: 40,
                          color: Colors.white,
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Text("سعید کاشانی",
                            style: TextStyle(color: Colors.white)),
                      ]),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text(
                        "خرید اشتراک",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Center(
                      child: Container(
                          margin: const EdgeInsets.only(top: 50),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const TablePage()),
                                );
                              },
                              child: const Text("Table Page"))))
                ],
              ),
            ),
          ));
    });
  }
}

class TablePage extends StatelessWidget {
  const TablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
                backgroundColor: const Color.fromARGB(255, 10, 14, 49),
                appBar: AppBar(
                  title: const Text('سابقه خرید'),
                  leading: (IconButton(
                    icon: const Icon(Icons.navigate_before),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )),
                ),
                body: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: DataTable(
                            headingRowColor: MaterialStateColor.resolveWith(
                                (states) => const Color.fromARGB(255, 139, 133, 133)),
                            columns: const [
                              DataColumn(
                                  label: Expanded(
                                      child: Text('عنوان',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          )))),
                              DataColumn(
                                  label: Expanded(
                                      child: Text('تاریخ خرید',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          )))),
                              DataColumn(
                                  label: Expanded(
                                      child: Text('قیمت',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white)))),
                              DataColumn(
                                  label: Expanded(
                                      child: Text("جزییات",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ))))
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Center(
                                    child: Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.beenhere_outlined,
                                        color: Colors.red,
                                        size: 18.0,
                                      ),
                                    ),
                                    Text("یک روزه",
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ))),
                                const DataCell(Center(
                                  child: Text("۰۰/۱۱/۲۱",
                                      style: TextStyle(color: Colors.white)),
                                )),
                                const DataCell(Center(
                                  child: Text("۱۰/۹۰۰",
                                      style: TextStyle(color: Colors.white)),
                                )),
                                DataCell(Center(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.navigate_next,
                                            color: Colors.white)))),
                              ]),
                              DataRow(cells: [
                                DataCell(Center(
                                    child: Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.beenhere_outlined,
                                        color: Colors.red,
                                        size: 18.0,
                                      ),
                                    ),
                                    Text("یک روزه",
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ))),
                                const DataCell(Center(
                                  child: Text("۰۰/۱۱/۲۱",
                                      style: TextStyle(color: Colors.white)),
                                )),
                                const DataCell(Center(
                                  child: Text("۱۰/۹۰۰",
                                      style: TextStyle(color: Colors.white)),
                                )),
                                DataCell(Center(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.navigate_next,
                                            color: Colors.white)))),
                              ]),
                              DataRow(cells: [
                                DataCell(Center(
                                    child: Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.beenhere_outlined,
                                        color: Colors.pink,
                                        size: 18.0,
                                      ),
                                    ),
                                    Text("سه ماهه",
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ))),
                                const DataCell(Center(
                                  child: Text("۰۰/۱۱/۲۱",
                                      style: TextStyle(color: Colors.white)),
                                )),
                                const DataCell(Center(
                                  child: Text("۱۰/۹۰۰",
                                      style: TextStyle(color: Colors.white)),
                                )),
                                DataCell(Center(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.navigate_next,
                                            color: Colors.white)))),
                              ]),
                            ],
                          ),
                        )
                      ])),
                ))));
  }
}