import 'package:flutter/material.dart';
import 'package:flutter_music_ui/src/pages/widgets/trailing_widget.dart';

class VerticalNavBar extends StatelessWidget {
  const VerticalNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border(
            right: BorderSide(
              color: Color(0xFF999999),
              width: 0.35,
            ),
          ),
        ),
        child: NavigationRail(
          backgroundColor: Colors.black,
          selectedIndex: 0,
          selectedIconTheme: IconThemeData(
            color: Color(0xFFFFFFFF),
          ),
          unselectedIconTheme: IconThemeData(
            color: Color(0xFFCCCCCC),
          ),
          onDestinationSelected: (int index) {},
          destinations: [
            NavigationRailDestination(
              icon: Icon(
                Icons.home_filled,
                size: 25,
              ),
              label: Text('Home'),
            ),
            NavigationRailDestination(
              icon: Icon(
                Icons.mic,
                size: 26,
              ),
              label: Text('Home'),
            ),
            NavigationRailDestination(
              icon: Icon(
                Icons.show_chart,
                size: 26,
              ),
              label: Text('Home'),
            ),
            NavigationRailDestination(
              icon: Icon(
                Icons.watch_later,
                size: 25,
              ),
              label: Text('Home'),
            ),
          ],
          leading: Padding(
            padding: EdgeInsets.only(top: 15),
            child: Container(
              height: 45,
              width: 45,
              child: Image.network(
                'https://logospng.org/download/spotify/logo-spotify-icon-2048.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          trailing: TrailingWidget(),
        ),
      ),
    );
  }
}
