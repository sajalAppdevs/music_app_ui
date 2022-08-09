import 'package:flutter/material.dart';
import 'package:flutter_music_ui/src/pages/widgets/genrer.dart';
import 'package:flutter_music_ui/src/pages/widgets/header.dart';
import 'package:flutter_music_ui/src/pages/widgets/sound_track_card.dart';

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  int currentSoundTrack = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Header(),
            Container(
              height: 340,
              child: PageView.builder(
                onPageChanged: (int index) {
                  setState(() {
                    currentSoundTrack = index;
                  });
                },
                controller: PageController(
                  viewportFraction: 0.85,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Center(
                    child: AnimatedScale(
                      scale: currentSoundTrack == index ? 1.08 : 1.0,
                      duration: Duration(
                        milliseconds: 300,
                      ),
                      child: SoundTrackCard(),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, bottom: 20, top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Genres',
                  style: TextStyle(
                    color: Color(0xFFEEEEEE),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 13, right: 13),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  Genrer(
                    genrerText: 'Classic',
                  ),
                  Genrer(
                    genrerText: 'House',
                  ),
                  Genrer(
                    genrerText: 'Techno',
                  ),
                  Genrer(
                    genrerText: 'Hip-hop',
                  ),
                  Genrer(
                    genrerText: 'Chilliout',
                  ),
                  Genrer(
                    genrerText: 'Minimal',
                  ),
                  Genrer(
                    genrerText: 'Blues',
                  ),
                  Genrer(
                    genrerText: 'Country',
                  ),
                  Genrer(
                    genrerText: 'Eletronic',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 13, right: 13, top: 25),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF222222),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'All Genres',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFEEEEEE),
                    fontSize: 14,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
