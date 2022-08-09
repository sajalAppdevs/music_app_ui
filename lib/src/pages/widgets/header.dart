import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
        right: 15,
        left: 15,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF999999),
            width: 0.4,
          ),
        ),
      ),
      child: TextField(
        style: TextStyle(color: Color(0xFFEEEEEE)),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.circle_outlined,
            color: Color(0xFFEEEEEE),
          ),
          hintText: 'Search...',
          hintStyle: TextStyle(
            color: Color(0xFFEEEEEE),
          ),
          suffixIcon: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://dl.memuplay.com/new_market/img/com.vicman.newprofilepic.icon.2022-06-07-21-33-07.png',
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 2,
          ),
        ),
      ),
    );
  }
}
