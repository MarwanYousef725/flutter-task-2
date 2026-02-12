import 'package:flutter/material.dart';
import 'package:project1/custom_widgets/app_bar.dart';
import 'package:project1/custom_widgets/buttons.dart';
import 'package:project1/custom_widgets/order_card.dart';

class Task3 extends StatelessWidget {
  Task3({super.key});
  final List<Map<String, String>> details = [
    {"text1": "رقم التعريف بالطلب", "text2": "#8456156"},
    {"text1": "كود التحقق", "text2": "1973"},
    {"text1": "عدد العناصر", "text2": "1"},
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView(
        children: [
          AppBarCustom(text: "تتبع الطلب"),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            child: Image.asset(
              "assets/images/cuate.png",
              width: 350,
              height: 235.85,
            ),
          ),
          Text(
            "سيتم توصيل طعامك خلال",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 13,
              color: Color.fromRGBO(104, 104, 104, 1),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.rtl,
            children: [
              Text(
                " 20/15",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                textAlign: TextAlign.center,
              ),
              Text(
                "دقيقة",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Color.fromRGBO(244, 100, 35, 1),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(),
          ),
          SizedBox(height: 12),
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "معلومات الطلب",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ),
          SizedBox(height: 16),
          OrderCard(isAdd: false, padding: 15),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              spacing: 16,
              children: List.generate(details.length, (i) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      "${details[i]["text1"]}",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      "${details[i]["text2"]}",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 15, vertical: 16),
            child: Buttons(
              button1: "تتبع الطلب",
              button2: "رفض الطلب",
              fontcolor1: Colors.white,
              fontcolor2: Color.fromRGBO(245, 85, 64, 1),
              borderColor1: Color.fromRGBO(245, 85, 64, 1),
              fontweight: FontWeight.w600,
              fontSize: 16,
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
