import 'package:bankingapp/constants/color_constants.dart';
import 'package:bankingapp/screens/customers.dart';
import 'package:bankingapp/screens/home.dart';
import 'package:bankingapp/screens/settings.dart';
import 'package:bankingapp/screens/transactions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Customers(),
    Transactions(),
    Settings()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        // fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.userGroup), label: "Customers"),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.arrowRightArrowLeft,
              ),
              label: "Transactions"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.gear), label: "Settings"),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
