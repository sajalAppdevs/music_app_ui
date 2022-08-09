import 'package:flutter/material.dart';

class SoundTrackCard extends StatelessWidget {
  const SoundTrackCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width * 0.6;

    return Container(
      clipBehavior: Clip.antiAlias,
      height: 300,
      width: cardWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xFFB081CC),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 25,
            child: Container(
              padding: EdgeInsets.only(
                top: 8,
                bottom: 8,
                right: 12,
                left: 12,
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Color(0xFFEEEEEE),
                  width: 0.8,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'House',
                style: TextStyle(
                  color: Color(0xFFEEEEEE),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 280,
              width: cardWidth,
              child: Image.asset(
                'lib/src/images/image2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            height: 150,
            width: cardWidth,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFB081CC).withOpacity(0.1),
                    Color(0xFF1B181D).withOpacity(0.3),
                    Color(0xFF3A343D).withOpacity(0.8),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xFF43DB58),
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Color(0xFFEEEEEE),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Release Radar',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                    Text(
                      'Updates every friday',
                      style: TextStyle(
                        color: Color(0xFFEEEEEE),
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
