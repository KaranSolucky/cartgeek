import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.pink, width: 1),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
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
                Column(
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'AlegreyaSans',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Karan solanki',
                      style: TextStyle(
                          color: Color.fromRGBO(227, 109, 166, 1),
                          fontSize: 20,
                          fontFamily: 'AlegreyaSans',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 181, 207, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 160.0,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 200, right: 1.0, top: 1.0),
                  child: Container(
                    child: Image.asset("assets/baby.png"),
                    height: 195.0,
                    width: 180.0,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 80.0),
                        child: Column(
                          children: [
                            Text(
                              '  Nanny and Babysitting\n  Services',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(38, 47, 113, 1),
                                  fontFamily: 'AlegreyaSans',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 30,
                              width: 100,
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  color: Color.fromRGBO(38, 47, 113, 1),
                                  onPressed: () {
                                    {}
                                  },
                                  child: Text(
                                    "Book Now",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontFamily: 'AlegreyaSans',
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ],
                        )),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '  Your Current Booking',
                    style: TextStyle(
                        fontSize: 22,
                        color: Color.fromRGBO(38, 47, 113, 1),
                        fontFamily: 'AlegreyaSans',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 200.0,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '  One Day Package',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color.fromRGBO(227, 109, 166, 1),
                                    fontFamily: 'AlegreyaSans',
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 85,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 30,
                                width: 100,
                                // ignore: deprecated_member_use
                                child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    color: Color.fromRGBO(227, 109, 166, 1),
                                    onPressed: () {
                                      {}
                                    },
                                    child: Text(
                                      "Start",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontFamily: 'AlegreyaSans',
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 100,
                              width: 280,
                              decoration: BoxDecoration(color: Colors.white),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "From",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontFamily: 'AlegreyaSans',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "To",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontFamily: 'AlegreyaSans',
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          height: 30,
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                "assets/calendar.png",
                                                height: 20,
                                              ),
                                              FlatButton(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                  ),
                                                  onPressed: () {
                                                    {}
                                                  },
                                                  child: Text(
                                                    "12.08.2020",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'AlegreyaSans',
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                            ],
                                          )),
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          height: 30,
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                "assets/calendar.png",
                                                height: 20,
                                              ),
                                              FlatButton(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                  ),
                                                  onPressed: () {
                                                    {}
                                                  },
                                                  child: Text(
                                                    "13.08.2020",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'AlegreyaSans',
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                            ],
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          height: 30,
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                "assets/clock.png",
                                                height: 20,
                                              ),
                                              FlatButton(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                  ),
                                                  onPressed: () {
                                                    {}
                                                  },
                                                  child: Text(
                                                    "11:00 AM",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'AlegreyaSans',
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                            ],
                                          )),
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          height: 30,
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                "assets/clock.png",
                                                height: 20,
                                              ),
                                              FlatButton(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                  ),
                                                  onPressed: () {
                                                    {}
                                                  },
                                                  child: Text(
                                                    "07:00 AM",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'AlegreyaSans',
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 30,
                                width: 100,
                                // ignore: deprecated_member_use
                                child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    color: Color.fromRGBO(38, 47, 113, 1),
                                    onPressed: () {
                                      {}
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star_border,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Rate Us",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white,
                                              fontFamily: 'AlegreyaSans',
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 30,
                                width: 120,
                                // ignore: deprecated_member_use
                                child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    color: Color.fromRGBO(38, 47, 113, 1),
                                    onPressed: () {
                                      {}
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Geolocation",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white,
                                              fontFamily: 'AlegreyaSans',
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 30,
                                width: 120,
                                // ignore: deprecated_member_use
                                child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    color: Color.fromRGBO(38, 47, 113, 1),
                                    onPressed: () {
                                      {}
                                    },
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.keyboard_voice_rounded,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Survillence",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white,
                                              fontFamily: 'AlegreyaSans',
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '  Packages',
                    style: TextStyle(
                        fontSize: 22,
                        color: Color.fromRGBO(38, 47, 113, 1),
                        fontFamily: 'AlegreyaSans',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 181, 207, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 160.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/clndr.png",
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 220,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 30,
                                  width: 100,
                                  // ignore: deprecated_member_use
                                  child: FlatButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      color: Color.fromRGBO(227, 109, 166, 1),
                                      onPressed: () {
                                        {}
                                      },
                                      child: Text(
                                        "Book Now",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontFamily: 'AlegreyaSans',
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '  One Day Package',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromRGBO(38, 47, 113, 1),
                                  fontFamily: 'AlegreyaSans',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 85,
                            ),
                            Text(
                              "₹2799",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(38, 47, 113, 1),
                                  fontFamily: 'AlegreyaSans',
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Container(
                          height: 80,
                          child: Padding(
                            child: Text(
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat"),
                            padding: EdgeInsets.all(10),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(128, 171, 219, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 160.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/clndr.png",
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 220,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 30,
                                  width: 100,
                                  // ignore: deprecated_member_use
                                  child: FlatButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      color: Color.fromRGBO(0, 152, 208, 1),
                                      onPressed: () {
                                        {}
                                      },
                                      child: Text(
                                        "Book Now",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontFamily: 'AlegreyaSans',
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '  Three Day Package',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromRGBO(38, 47, 113, 1),
                                  fontFamily: 'AlegreyaSans',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 85,
                            ),
                            Text(
                              "₹4799",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(38, 47, 113, 1),
                                  fontFamily: 'AlegreyaSans',
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Container(
                          height: 80,
                          child: Padding(
                            child: Text(
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat"),
                            padding: EdgeInsets.all(10),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 181, 207, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 160.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/clndr.png",
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 220,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 30,
                                  width: 100,
                                  // ignore: deprecated_member_use
                                  child: FlatButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      color: Color.fromRGBO(227, 109, 166, 1),
                                      onPressed: () {
                                        {}
                                      },
                                      child: Text(
                                        "Book Now",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontFamily: 'AlegreyaSans',
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '  Five Day Package',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromRGBO(38, 47, 113, 1),
                                  fontFamily: 'AlegreyaSans',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 85,
                            ),
                            Text(
                              "₹11499",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(38, 47, 113, 1),
                                  fontFamily: 'AlegreyaSans',
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Container(
                          height: 80,
                          child: Padding(
                            child: Text(
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat"),
                            padding: EdgeInsets.all(10),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(128, 171, 219, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 160.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/clndr.png",
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 220,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 30,
                                  width: 100,
                                  // ignore: deprecated_member_use
                                  child: FlatButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      color: Color.fromRGBO(0, 152, 208, 1),
                                      onPressed: () {
                                        {}
                                      },
                                      child: Text(
                                        "Book Now",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontFamily: 'AlegreyaSans',
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '  Weekend Day Package',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromRGBO(38, 47, 113, 1),
                                  fontFamily: 'AlegreyaSans',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 85,
                            ),
                            Text(
                              "₹7499",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(38, 47, 113, 1),
                                  fontFamily: 'AlegreyaSans',
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Container(
                          height: 80,
                          child: Padding(
                            child: Text(
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat"),
                            padding: EdgeInsets.all(10),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        )));
  }
}
