import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.notoKufiArabicTextTheme()),
      home: Screen2(),
    );
  }
}

class Screen1 extends StatelessWidget {
  Screen1({super.key});
  //Data categories
  final List<Map<String, dynamic>> categories = [
    {
      "image": "assets/images/Beef.png",
      "color": const Color.fromARGB(152, 0, 187, 212),
      "text": "لحوم",
    },
    {
      "image": "assets/images/Fish.png",
      "color": const Color.fromARGB(152, 60, 152, 98),
      "text": "ماكؤلات بحرية",
    },
    {
      "image": "assets/images/Chiken.png",
      "color": const Color.fromARGB(152, 255, 113, 160),
      "text": "مشويات",
    },
    {
      "image": "assets/images/Burger.png",
      "color": const Color.fromARGB(152, 255, 86, 34),
      "text": "وجبات سريعة",
    },
  ];
  final List<String> best = [
    "assets/images/Burger.png",
    "assets/images/Fish.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          //---------------------------------------------------
          //heading begin
          //the address, notification icon and profile image
          Padding(
            padding: EdgeInsets.only(right: 20, top: 46, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/Component3.png"),
                Column(
                  spacing: 8,
                  children: [
                    Row(
                      children: [
                        Text(
                          'الموقع الحالى',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            height: 1,
                          ),
                        ),
                        Image.asset('assets/images/Direct3.png'),
                      ],
                    ),
                    Text(
                      '19 الشيخ احمد الصاوي , مدينة نصر',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        height: 1,
                        color: Color(0xff515151),
                      ),
                    ),
                  ],
                ),
                Container(
                  clipBehavior: Clip.antiAlias,
                  width: 50,
                  height: 50,

                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x111C3033),
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset('assets/images/proimg.png'),
                ),
              ],
            ),
          ),
          //heading end
          //------------------------------------------------------
          //Search Engine begin
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            width: 350,
            height: 45,
            child: TextField(
              textDirection: TextDirection.rtl,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: Color.fromARGB(255, 255, 176, 167),
              decoration: InputDecoration(
                suffixIcon: Container(
                  margin: EdgeInsets.only(right: 8),
                  child: Image.asset("assets/images/search-normal.png"),
                ),
                fillColor: Color.fromARGB(10, 252, 202, 196),
                filled: true,
                hint: Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    "تبحث عن وجبه معينة ؟",
                    style: TextStyle(
                      color: Color(0xffFCCAC4),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide(width: 1, color: Colors.redAccent),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide(width: 1, color: Colors.redAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide(width: 1, color: Colors.redAccent),
                ),
              ),
              onTapUpOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
            ),
          ),
          //Search Engine End
          //----------------------------------------------------------
          //Categories begin
          //----------------------------------------------------------
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(categories.length, (i) {
                  return Container(
                    margin: (i == 0)
                        ? EdgeInsets.only(left: 20)
                        : (i == categories.length - 1)
                        ? EdgeInsets.only(right: 20)
                        : null,
                    alignment: Alignment.center,
                    child: Column(
                      spacing: 5,
                      children: [
                        Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                            color: categories[i]['color'],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(categories[i]['image']),
                        ),
                        Text(
                          "${categories[i]['text']}",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          //Categories End
          //-------------------------------------------------------
          //Advertisement Begin
          //-------------------------------------------------------
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Image.asset('assets/images/ad.png', width: 350, height: 177),
          ),
          //Advertisement End
          //-------------------------------------------------------
          //-------------------------------------------------------
          //The Best begin
          //-------------------------------------------------------
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.centerRight,
            child: Text(
              "🔥 الافضل خلال اليوم",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              textDirection: TextDirection.rtl,
            ),
          ),
          BestItems(best: best),
          //The Best End
          //-------------------------------------------------------
        ],
      ),
    );
  }
}

class BestItems extends StatelessWidget {
  final List<String> best;
  const BestItems({super.key, required this.best});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: best.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 217.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20),

      itemBuilder: (context, index) {
        return Column(
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
              child: Image.asset(best[index], scale: .6),
            ),
            Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  spacing: 4,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "بج بيرجر سبايسي",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "وجبات سريعة",
                          style: TextStyle(
                            fontSize: 8,
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
                    Text(
                      "150 ج.م",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff868686),
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  width: 36,
                  height: 36,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xffF55540),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/Group.png',
                    width: 20,
                    height: 20,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
