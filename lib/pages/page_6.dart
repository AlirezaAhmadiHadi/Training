import 'package:flutter/material.dart';

class Content {
  final String image;
  final String title;
  final String des;

  const Content({required this.image, required this.title, required this.des});

  static Content convertJson(json) =>
      Content(image: json['image'], title: json['title'], des: json['des']);
}

List<Content> getContent() {
  const data = [
    {"image": "lib/images/image_1.jpeg", "title": "Food", "des": "food"},
    {
      "image": "lib/images/image_2.jpeg",
      "title": "Keyboard",
      "des": "keyboard"
    },
    {"image": "lib/images/image_3.jpeg", "title": "Table 1", "des": "table 1"},
    {"image": "lib/images/image_4.jpeg", "title": "Table 2", "des": "table 2"},
    {"image": "lib/images/image_5.jpeg", "title": "Table 3", "des": "table 3"},
    {"image": "lib/images/image_6.jpeg", "title": "Table 4", "des": "table 4"},
    {"image": "lib/images/image_7.jpeg", "title": "Table 5", "des": "table 5"},
    {"image": "lib/images/image_8.jpeg", "title": "Table 6", "des": "table 6"},
    {"image": "lib/images/image_9.jpeg", "title": "Table 7", "des": "table 7"},
    {"image": "lib/images/image_10.jpeg", "title": "Table 8", "des": "table 8"}
  ];

  return data.map<Content>(Content.convertJson).toList();
}

class Page6 extends StatelessWidget {
  Page6({super.key});

  final List<Content> contents = getContent();

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 19, 46),
      appBar: AppBar(
        title: Text("First full page"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 26, 37, 129),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            SizedBox(
              height: screenHight * 0.35,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
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
                                height: 6,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: 12,
                                          right: 12,
                                          top: 5,
                                          bottom: 5),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color:
                                              Color.fromARGB(226, 206, 40, 40),
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
                                              style: TextStyle(
                                                  color: Colors.white),
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
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: 12,
                                          right: 12,
                                          top: 4,
                                          bottom: 5),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(223, 138, 138, 138),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                      child: Text(
                                        "مسابقه",
                                        style: TextStyle(color: Colors.white),
                                      ),
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
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "علیرضا احمدی هادی در سال ۱۳۸۰ در اردبیل متولد شده است و اصالتا ترک است. پدرش اردبیلی و مادرش هم اردبیلی است او از سن ۱۱ سالگی" *
                              10,
                          style: TextStyle(
                            color: Color.fromARGB(255, 230, 230, 230),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 16, 19, 46),
              padding: EdgeInsets.only(left: 12),
              child: Align(
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
                  itemCount: contents.length,
                  separatorBuilder: (context, index) => Divider(
                    color: Color.fromARGB(255, 218, 218, 218),
                    endIndent: 25,
                    indent: 16,
                    height: 0,
                    thickness: .15,
                  ),
                  itemBuilder: (context, index) {
                    final content = contents[index];
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
                            content.image,
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
                          content.title,
                          style: TextStyle(
                            color: Color.fromARGB(255, 240, 240, 240),
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          content.des,
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
    );
  }
}
