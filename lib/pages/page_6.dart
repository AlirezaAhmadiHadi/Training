import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page6 extends StatelessWidget {
  Page6({super.key});

  final List<AssetImage> images = [
    AssetImage("lib/images/image_1"),
    AssetImage("lib/images/image_2"),
    AssetImage("lib/images/image_3"),
    AssetImage("lib/images/image_4"),
    AssetImage("lib/images/image_5"),
    AssetImage("lib/images/image_6"),
    AssetImage("lib/images/image_7"),
    AssetImage("lib/images/image_8"),
    AssetImage("lib/images/image_9"),
    AssetImage("lib/images/image_10"),
  ];
  final List<String> discriptions = [
    "food",
    "Keyboard",
    "Table 1",
    "Table 2",
    "Table 3",
    "Table 4",
    "Table 5",
    "Table 6",
    "Table 7",
    "Table 8",
  ];
  final List<String> titles = [
    "food",
    "Keyboard",
    "Table 1",
    "Table 2",
    "Table 3",
    "Table 4",
    "Table 5",
    "Table 6",
    "Table 7",
    "Table 8",
  ];

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
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
                height: screenHight * 0.3,
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
                            stops: [0, 0.05],
                          ).createShader(bounds);
                        },
                        child: Image(
                          image: AssetImage(
                            'lib/images/image_main',
                          ),
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
                          height: 22,
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
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 0),
                        child: Text(
                          "بیشتر",
                          style: TextStyle(
                              color: Color.fromARGB(255, 218, 218, 218),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color.fromARGB(255, 20, 24, 59),
                padding:
                    EdgeInsets.only(top: 30, right: 12, left: 12, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "تک آهنگ ها",
                      style: TextStyle(
                          color: Color.fromARGB(255, 218, 218, 218),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "بیشتر",
                      style: TextStyle(
                          color: Color.fromARGB(255, 218, 218, 218),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Color.fromARGB(255, 20, 24, 59),
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemCount: titles.length,
                    separatorBuilder: (context, index) => Divider(
                        color: Color.fromARGB(255, 218, 218, 218),
                        endIndent: 25,
                        indent: 16,
                        height: 2,
                        thickness: .15),
                    itemBuilder: (context, index) {
                      return OutlinedButton(
                        onPressed: () {},
                        child: ListTile(
                          leading: SizedBox(
                            width: 40,
                            height: 40,
                            child: Image(
                              image: images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          trailing: Icon(
                            Icons.more_vert,
                            color: Color.fromARGB(255, 218, 218, 218),
                          ),
                          title: Text(
                            titles[index],
                            style: TextStyle(
                                color: Color.fromARGB(255, 240, 240, 240),
                                fontSize: 18),
                          ),
                          subtitle: Text(
                            discriptions[index],
                            style: TextStyle(
                                color: Color.fromARGB(255, 158, 158, 158),
                                fontSize: 13),
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
