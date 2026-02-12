import 'package:flutter/material.dart';
import 'package:project1/custom_widgets/buttons.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return CustomCard();
        },
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            offset: Offset(0, 4),
            color: Color.fromRGBO(0, 0, 0, 0.08),
          ),
        ],
      ),
      child: Column(
        spacing: 8,
        children: [
          Row(
            spacing: 4,
            textDirection: TextDirection.rtl,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset(
                  "assets/images/image2.png",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                spacing: 4,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "كود الطلب: #545555",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                  ),
                  Text(
                    "اسم المطعم",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color(0xffF55540),
                    ),
                  ),
                  Row(
                    spacing: 4,
                    children: [
                      Text(
                        "الساعه 12:30 ص",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xff939393),
                        ),
                      ),
                      Text(
                        "15/1/2024",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xff939393),
                        ),
                      ),
                      Image.asset(
                        "assets/images/clock.png",
                        width: 18,
                        height: 18,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Buttons(
            button1: "موافق",
            button2: "رفض",
            fontcolor1: Colors.white,
            fontcolor2: Color(0xff7F7F7F),
            borderColor1: Color(0xff7F7F7F),
            fontweight: FontWeight.w500,
            fontSize: 14,
            height: 47,
          ),
        ],
      ),
    );
  }
}
