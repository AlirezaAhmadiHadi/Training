import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 14, 49),
      appBar: AppBar(
        title: const Text("Page 1"),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text("تنظیمات", style: TextStyle(color: Colors.white)),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: const <Widget>[
                    Icon(
                      FontAwesomeIcons.circleUser,
                      size: 40,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text("سعید کاشانی",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "خرید اشتراک",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
