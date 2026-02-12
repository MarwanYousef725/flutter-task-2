import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  final String text;
  const AppBarCustom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/Component3.png"),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(245, 85, 64, 1),
              borderRadius: BorderRadius.circular(50),
            ),

            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_outlined, size: 24),

              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
