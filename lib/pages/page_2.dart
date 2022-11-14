import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(builder: (context, child) {
      return Scaffold(
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
                                      fontSize: 18, color: Colors.white)))),
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
                        DataCell(Row(
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
                        )),
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
                        DataCell(Row(
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
                        )),
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
                        DataCell(Row(
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
                        )),
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
        ),
      );
    });
  }
}
