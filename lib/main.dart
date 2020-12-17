import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BUBBLE BOTTOM BAR"),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: SizedBox(
          child: Drawer(),
        ),
        bottomNavigationBar: CubertoBottomBar(
          key: Key("Bottom Bar"),
          inactiveIconColor: Colors.white,
          barBackgroundColor: Colors.green[400],
          tabColor: Colors.white,
          selectedTab: 0,
          barBorderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          tabStyle: CubertoTabStyle.STYLE_FADED_BACKGROUND,
          tabs: [
            TabData(
              iconData: Icons.home_outlined,
              title: "Home",
              tabColor: Colors.white,
              // borderRadius: BorderRadius.cir
            ),
            TabData(
              iconData: Icons.notifications_active_outlined,
              title: "Notifications",
            ),
            TabData(
              iconData: Icons.list_alt_outlined,
              title: "Listing",
            ),
            TabData(
              iconData: Icons.account_circle_outlined,
              title: "Profile",
            ),
          ],
          onTabChangedListener: (position, color, title) {
            setState(() {});
          },
        ),
      ),
    );
  }
}
