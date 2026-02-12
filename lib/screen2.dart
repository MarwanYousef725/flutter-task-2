import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  Screen2({super.key});

  bool isliked = false;
  List<Map<String, dynamic>> settings = [
    {"cont": "assets/images/setting-5.png", "sele": true},
    {"cont": "الافضل 🔥", "sele": true},
    {"cont": "بيتزا", "sele": false},
    {"cont": "مشويات", "sele": false},
    {"cont": "حلويات", "sele": false},
    {"cont": "محاشي", "sele": false},
  ];
  List<String> best = [
    "assets/images/pizza.png",
    "assets/images/salade.png",
    "assets/images/pasta_pina.png",
    "assets/images/Chiken.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 193,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Image.asset('assets/images/image.jpg', fit: BoxFit.cover),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Color(0xffE6E6E6), width: 1),
            ),
            width: 350,
            height: 102,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatefulBuilder(
                  builder: (context, setState) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 11,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(8),
                          onTap: () {
                            setState(() {
                              isliked = !isliked;
                            });
                          },
                          child: Image.asset(
                            'assets/images/heart.png',
                            color: isliked ? Colors.red : Colors.black,
                            width: 24,
                            height: 24,
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(8),
                          onTap: () {},
                          child: Image.asset(
                            'assets/images/Vector2.png',
                            width: 17.2700138092041,
                            height: 20.262813568115234,
                            color: Color(0xff343330),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                Row(
                  spacing: 13,
                  children: [
                    Column(
                      spacing: 4,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "اسم الطعم هنا",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          spacing: 5,
                          children: [
                            Text(
                              "طعام بحري , مشويات , اكلات سريعة",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff868686),
                              ),
                            ),
                            Image.asset(
                              'assets/images/Vector.png',
                              width: 14,
                              height: 12.33,
                            ),
                          ],
                        ),
                        Row(
                          spacing: 5,
                          children: [
                            Text(
                              "(+100) 5.0",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Image.asset(
                              'assets/images/Star.png',
                              width: 14,
                              height: 14,
                            ),
                          ],
                        ),
                        Row(
                          spacing: 5,
                          children: [
                            Text(
                              "متاح التوصيل",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff868686),
                              ),
                            ),
                            Image.asset(
                              'assets/images/truckfast.png',
                              width: 14,
                              height: 12.33,
                            ),
                          ],
                        ),
                      ],
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 63, maxHeight: 81),
                      child: Container(
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              blurRadius: 9,
                            ),
                          ],
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: Color(0xffFFFFfF),
                            width: 2,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/Rectangle1976.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          StatefulBuilder(
            builder: (context, setState) {
              return Container(
                height: 30,
                child: ListView.builder(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: settings.length,
                  itemBuilder: (context, i) {
                    return InkWell(
                      borderRadius: BorderRadius.circular(4),
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        if (i != 0) {
                          setState(() {
                            for (int j = 0; j < settings.length; j++) {
                              settings[j]["sele"] = false;
                            }
                            settings[0]['sele'] = true;
                            settings[i]["sele"] = true;
                          });
                        }
                        print("mmm");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        margin: (i == 0)
                            ? EdgeInsets.only(right: 20, left: 10)
                            : i == settings.length - 1
                            ? EdgeInsets.only(left: 20)
                            : EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            width: 1,
                            color: settings[i]["sele"]
                                ? Color.fromRGBO(245, 85, 64, 1)
                                : Color.fromRGBO(230, 230, 230, 1),
                          ),
                        ),
                        child: i == 0
                            ? Image.asset(
                                settings[i]["cont"],
                                width: 28,
                                height: 28,
                              )
                            : Text(
                                settings[i]["cont"],
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: settings[i]["sele"]
                                      ? Color.fromRGBO(245, 85, 64, 1)
                                      : Color.fromRGBO(114, 114, 114, 1),
                                ),
                              ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
          CustomWidget(text: "الافضل 🔥"),
          GridView.builder(
            reverse: true,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: best.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 167.5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            padding: EdgeInsets.symmetric(horizontal: 20),

            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 8,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 170,
                    height: 109.5,
                    decoration: BoxDecoration(
                      color: const Color(0xffFEEEEC),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Image.asset(
                      best[index],
                      fit: BoxFit.fill,
                      scale: .5,
                    ),
                  ),
                  Text(
                    textDirection: TextDirection.rtl,
                    "معكرونه بالصوص و قطع بانية حار",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                  ),
                  Text(
                    "2.20 د.ك",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Color.fromRGBO(134, 134, 134, 1),
                    ),
                  ),
                ],
              );
            },
          ),
          CustomWidget(text: "بيتزا 🍕"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: List.generate(3, (index) {
                return Column(
                  children: [
                    Row(
                      spacing: 14,
                      textDirection: TextDirection.rtl,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            width: 100.5,
                            height: 100.5,
                            child: Image.asset(
                              "assets/images/food.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                textDirection: TextDirection.rtl,
                                'معكرونه بالصوص و قطع بانية حار',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 233.25,
                                height: 51,
                                child: Text(
                                  textDirection: TextDirection.rtl,
                                  "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.",
                                  style: TextStyle(
                                    fontSize: 7,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Text(
                                "2.20 د.ك",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    index < 2
                        ? Divider()
                        : Divider(
                            height: 0,
                            thickness: 0,
                            color: Colors.transparent,
                          ),
                  ],
                );
              }),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                disabledBackgroundColor: Color.fromRGBO(245, 85, 64, 0.521),
                fixedSize: Size(350, 56.12),
                padding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Color.fromRGBO(245, 85, 64, 1),
              ),
              onPressed: null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    textDirection: TextDirection.rtl,
                    "0.00 ج.م",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 16,
                    children: [
                      Text(
                        'الإطلاع علي السلة',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 183, 174, 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "0",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  final String text;
  const CustomWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      alignment: Alignment.centerRight,
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
      ),
    );
  }
}
