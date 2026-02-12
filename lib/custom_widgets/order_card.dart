import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final bool isAdd;
  final double padding;
  const OrderCard({super.key, required this.isAdd, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(left: 14),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
              width: 100.5,
              height: 100.5,
              child: Image.asset("assets/images/food.png", fit: BoxFit.cover),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              spacing: 4,
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "معكرونه بالصوص و قطع بانية حار",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                SizedBox(
                  child: Text(
                    textDirection: TextDirection.rtl,
                    "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "2.20 ج.م",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    isAdd
                        ? Container(
                            width: 98,
                            alignment: Alignment.center,

                            height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0,
                                  color: Color.fromRGBO(0, 0, 0, 0.079),
                                  blurRadius: 9,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // textDirection: TextDirection.,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.add,
                                    color: Color.fromRGBO(245, 85, 64, 1),
                                  ),
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.remove,
                                    color: Color.fromRGBO(255, 210, 176, 1),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
