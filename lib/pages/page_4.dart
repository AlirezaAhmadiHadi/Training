import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 14, 49),
      appBar: AppBar(
        title: const Text("Page 4"),
      ),
      body: const Directionality(
        textDirection: TextDirection.rtl,
        child: Text("This is Page 4"),
      ),
    );
  }
}
