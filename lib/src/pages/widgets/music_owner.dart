import 'package:flutter/material.dart';

class MusicOwner extends StatelessWidget {
  const MusicOwner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: 50,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.network(
            'https://pt.unbilgi.com/wp-content/uploads/2021/02/Travis-Scott-770x433.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 50,
          width: 50,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Color(0xFF1E381F).withOpacity(0.7),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            Icons.graphic_eq,
            color: Color(0xFFDDDDDD),
          ),
        )
      ],
    );
  }
}
