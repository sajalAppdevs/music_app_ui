import 'package:flutter/material.dart';
import 'package:flutter_music_ui/src/pages/widgets/music_owner.dart';
import 'package:flutter_music_ui/src/pages/widgets/sound_volume_bar.dart';

class TrailingWidget extends StatelessWidget {
  const TrailingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(bottom: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.more_vert,
              color: Color(0xFF999999),
              size: 27,
            ),
            SizedBox(
              height: 20,
            ),
            SoundVolumeBar(),
            SizedBox(
              height: 20,
            ),
            Icon(
              Icons.volume_up_rounded,
              color: Color(0xFFFFFFFF),
              size: 27,
            ),
            SizedBox(
              height: 20,
            ),
            Icon(
              Icons.favorite_outlined,
              color: Color(
                0xFF999999,
              ),
              size: 27,
            ),
            SizedBox(
              height: 20,
            ),
            MusicOwner()
          ],
        ),
      ),
    );
  }
}
