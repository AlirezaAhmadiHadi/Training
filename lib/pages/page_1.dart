import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(builder: (context, child) {
      return Scaffold(
          backgroundColor: const Color.fromARGB(255, 10, 14, 49),
          appBar: AppBar(
            title: const Text("Page 1"),
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
                ],
              ),
            ),
          ));
    });
  }
}
