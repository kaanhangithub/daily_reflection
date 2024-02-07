
import 'package:blank_name/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({super.key});
  
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          color: Colors.grey.shade900,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: GNav(
              backgroundColor: Colors.grey.shade900,
              color: theme.colorScheme.primary,
              activeColor:  theme.colorScheme.primary,
              tabBackgroundColor: theme.colorScheme.inversePrimary,
              iconSize: 25,
              gap: 8,
              padding: EdgeInsets.all(16),
              selectedIndex: _selectedIndex,
              onTabChange: _onItemTapped,
              tabs: const[
                GButton(
                  icon: FlutterIslamicIcons.crescentMoon,
                  text: 'Home'),
                  GButton(
                  icon: FlutterIslamicIcons.mohammad,
                  text: 'Hadith'),
                  GButton(
                  icon: FlutterIslamicIcons.prayingPerson,
                  text: 'Duas'),
                  GButton(
                  icon: FlutterIslamicIcons.tasbih3,
                  text: 'Dhikr')
              ]),
            )
        ),
    );
  }

   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}