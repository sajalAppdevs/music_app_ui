import 'package:flutter/material.dart';

class SoundVolumeBar extends StatelessWidget {
  const SoundVolumeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 5,
          height: 70,
          decoration: BoxDecoration(
            color: Color(0xFF555555),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 5,
            height: 20,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        )
      ],
    );
  }
}
