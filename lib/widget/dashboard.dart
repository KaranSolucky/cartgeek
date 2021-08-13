import 'package:flutter/material.dart';
import 'package:flutter_drawer/widget/Homepage.dart';
import 'package:flutter_drawer/widget/drawerMenu.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (_index) {
      case 0:
        child = MainWidget();
        break;
      case 1:
        child = FlutterLogo();
        break;
      case 2:
        child = FlutterLogo();
        break;
      case 3:
        child = FlutterLogo();
        break;
    }

    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromRGBO(227, 109, 166, 1),
        backgroundColor: Colors.white,
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.alarm_on_outlined), title: Text("Booking")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("Profile")),
        ],
      ),
    );
  }
}
