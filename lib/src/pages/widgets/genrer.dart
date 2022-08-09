import 'package:flutter/material.dart';

class Genrer extends StatelessWidget {
  final String genrerText;
  const Genrer({Key? key, required this.genrerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 13,
        bottom: 13,
        left: 17,
        right: 17,
      ),
      decoration: BoxDecoration(
        color: Color(0xFF111111),
        border: Border.all(
          width: 1,
          color: Color(0xFF333333),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        genrerText,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xFFEEEEEE),
          fontSize: 14,
        ),
      ),
    );
  }
}
