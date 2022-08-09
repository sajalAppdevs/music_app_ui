import 'package:flutter/material.dart';
import 'package:flutter_music_ui/src/pages/widgets/content.dart';
import 'package:flutter_music_ui/src/pages/widgets/vertical_nav_bar.dart';

class MusicsPage extends StatelessWidget {
  const MusicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Row(
          children: [
            VerticalNavBar(),
            Content(),
          ],
        ),
      ),
    );
  }
}
