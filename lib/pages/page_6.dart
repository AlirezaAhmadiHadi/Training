import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page6 extends StatelessWidget {
  Page6({super.key});

  final content = [
    ["lib/images/image_1.jpeg", "Food", "food"],
    ["lib/images/image_2.jpeg", "Keyboard", "keyboard"],
    ["lib/images/image_3.jpeg", "Table 1", "table 1"],
    ["lib/images/image_4.jpeg", "Table 2", "table 2"],
    ["lib/images/image_5.jpeg", "Table 3", "table 3"],
    ["lib/images/image_6.jpeg", "Table 4", "table 4"],
    ["lib/images/image_7.jpeg", "Table 5", "table 5"],
    ["lib/images/image_8.jpeg", "Table 6", "table 6"],
    ["lib/images/image_9.jpeg", "Table 7", "table 7"],
    ["lib/images/image_10.jpeg", "Table 8", "table 8"]
  ];

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("First full page"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 26, 37, 129),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              SizedBox(
                height: screenHight * 0.25,
                width: double.infinity,
                child: Stack(
                  children: [
                    SizedBox(
                      height: screenHight * 0.3,
                      width: double.infinity,
                      child: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                            colors: [
                              Color.fromARGB(255, 16, 19, 46),
                              Color.fromARGB(255, 255, 255, 255),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            stops: [0, 0.6],
                          ).createShader(bounds);
                        },
                        child: Image.asset(
                          'lib/images/image_main.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Text(
                                "علیرضا احمدی هادی",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.verified_rounded,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 12, right: 12, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromARGB(226, 206, 40, 40),
                                ),
                                color: Color.fromARGB(176, 180, 31, 31),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      "دنبال میکنید",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Icon(
                                    Icons.check,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              padding: EdgeInsets.only(
                                  left: 12, right: 12, top: 4, bottom: 5),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(223, 138, 138, 138),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Text(
                                "مسابقه",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Color.fromARGB(255, 16, 19, 46),
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        " علیرضا احمدی هادی در سال ۱۳۸۰ در اردبیل متولد شده است و اصالتا ترک است. پدرش اردبیلی و مادرش هم اردبیلی است او از سن ۱۱ سالگی ...",
                        style: TextStyle(
                          color: Color.fromARGB(255, 230, 230, 230),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "بیشتر",
                          style: TextStyle(
                            color: Color.fromARGB(255, 218, 218, 218),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color.fromARGB(255, 20, 24, 59),
                padding: EdgeInsets.only(top: 10, right: 12, left: 12, bottom: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "تک آهنگ ها",
                      style: TextStyle(
                        color: Color.fromARGB(255, 218, 218, 218),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "بیشتر",
                        style: TextStyle(
                          color: Color.fromARGB(255, 218, 218, 218),
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Color.fromARGB(255, 20, 24, 59),
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemCount: content.length,
                    separatorBuilder: (context, index) => Divider(
                      color: Color.fromARGB(255, 218, 218, 218),
                      endIndent: 25,
                      indent: 16,
                      height: 0,
                      thickness: .15,
                    ),
                    itemBuilder: (context, index) {
                      return TextButton(
                        onPressed: () {},
                        child: ListTile(
                          dense: true,
                          visualDensity: VisualDensity(vertical: -1),
                          contentPadding: EdgeInsets.only(right: 5),
                          leading: SizedBox(
                            width: 40,
                            height: 40,
                            child: Image.asset(
                              content[index][0],
                              fit: BoxFit.cover,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              color: Color.fromARGB(255, 218, 218, 218),
                            ),
                          ),
                          title: Text(
                            content[index][1],
                            style: TextStyle(
                              color: Color.fromARGB(255, 240, 240, 240),
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Text(
                            content[index][2],
                            style: TextStyle(
                              color: Color.fromARGB(255, 158, 158, 158),
                              fontSize: 13,
                            ),
                          ),
                        ),
                      );
                    },
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
