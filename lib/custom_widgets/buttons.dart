import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({
    super.key,
    required this.button1,
    required this.button2,
    required this.fontcolor1,
    required this.fontcolor2,
    required this.borderColor1,
    required this.fontweight,
    required this.fontSize,
    required this.height,
  });
  final String button1;
  final String button2;
  final Color fontcolor1;
  final Color fontcolor2;
  final Color borderColor1;
  final FontWeight fontweight;
  final double fontSize;
  final double height;
  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              print("OK");
            },
            child: Container(
              height: widget.height,
              width: 160,
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffF55540),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                widget.button1,
                style: TextStyle(
                  fontWeight: widget.fontweight,
                  fontSize: widget.fontSize,
                  color: widget.fontcolor1,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              print("OK");
            },
            child: Container(
              width: 160,
              height: widget.height,
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: widget.borderColor1, width: 1),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                widget.button2,
                style: TextStyle(
                  fontWeight: widget.fontweight,
                  fontSize: widget.fontSize,
                  color: widget.fontcolor2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
