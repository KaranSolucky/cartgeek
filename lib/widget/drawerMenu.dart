import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Homepage.dart';
import 'drawerController.dart';

// ignore: must_be_immutable
class MenuPage extends DrawerContent {
  MenuPage({Key key, this.title});
  final String title;
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Image.asset("assets/menus.png"),
            onPressed: () => {widget.onMenuPressed()},
          ),
        ],
        leading: new IconButton(
          icon: new Icon(Icons.dehaze),
          onPressed: () => {widget.onMenuPressed()},
        ),
        title: Text('Hidden Drawer'),
      ),
      body: HomePage(),
    );
  }
}

class MainWidget extends StatefulWidget {
  MainWidget({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> with TickerProviderStateMixin {
  HiddenDrawerController _drawerController;
  @override
  void initState() {
    super.initState();
    _drawerController = HiddenDrawerController(
        initialPage: MenuPage(
          title: 'main',
        ),
        items: [
          DrawerItem(
            text: Text(
              'Home',
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(38, 47, 113, 1),
                  fontFamily: 'AlegreyaSans',
                  fontWeight: FontWeight.bold),
            ),
            // icon: Icon(Icons.home, color: Color.fromRGBO(38, 47, 113, 1)),
            page: MenuPage(
              title: 'Home',
            ),
          ),
          DrawerItem(
            text: Text(
              'Book A Nanny',
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(38, 47, 113, 1),
                  fontFamily: 'AlegreyaSans',
                  fontWeight: FontWeight.bold),
            ),
            page: MenuPage(
              title: 'Gallery',
            ),
          ),
          DrawerItem(
            text: Text(
              'How It Works',
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(38, 47, 113, 1),
                  fontFamily: 'AlegreyaSans',
                  fontWeight: FontWeight.bold),
            ),
            page: MenuPage(
              title: 'Favorites',
            ),
          ),
          DrawerItem(
            text: Text(
              'Why Nanny Vanny',
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(38, 47, 113, 1),
                  fontFamily: 'AlegreyaSans',
                  fontWeight: FontWeight.bold),
            ),
            page: MenuPage(
              title: 'Settings',
            ),
          ),
          DrawerItem(
            text: Text(
              'My Bookings',
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(38, 47, 113, 1),
                  fontFamily: 'AlegreyaSans',
                  fontWeight: FontWeight.bold),
            ),
            page: MenuPage(
              title: 'Settings',
            ),
          ),
          DrawerItem(
            text: Text(
              'My Profile',
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(38, 47, 113, 1),
                  fontFamily: 'AlegreyaSans',
                  fontWeight: FontWeight.bold),
            ),
            page: MenuPage(
              title: 'Settings',
            ),
          ),
          DrawerItem(
            text: Text(
              'Support',
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(38, 47, 113, 1),
                  fontFamily: 'AlegreyaSans',
                  fontWeight: FontWeight.bold),
            ),
            page: MenuPage(
              title: 'Settings',
            ),
          )
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HiddenDrawer(
        controller: _drawerController,
        header: Align(
          alignment: Alignment.topLeft,
          child: Column(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.pink, width: 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              width: MediaQuery.of(context).size.width * 0.4,
              child: ClipOval(
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://media-exp1.licdn.com/dms/image/C4D03AQGkj8YMhyeI9w/profile-displayphoto-shrink_800_800/0/1624436878199?e=1634169600&v=beta&t=QwcIARUlc11bBXp28oKWtL6QJDab16FapTmH913x4nI',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Karan solanki',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'AlegreyaSans',
                  fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFFC5185),
                Color(0xFF6B5072).withOpacity(0.8),
                Color(0xFF3F3D56)
              ]),
        ),
      ),
    );
  }
}
