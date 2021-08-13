import 'package:flutter/material.dart';

import 'login_page.dart';

class Signup extends StatefulWidget {
  const Signup({Key key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _value = false;
  int val = -1;
  int _radioValue1 = 0;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;
    });
  }

  final _formKey = GlobalKey<FormState>();
  String radioItem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Container(child: Image.asset("assets/appbar.PNG")),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Align(
              child: Container(child: Image.asset("assets/center.png")),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              child: Text(
                "Sign up to continue",
                style: TextStyle(
                    fontFamily: 'AlegreyaSans',
                    fontSize: 30,
                    color: Color.fromRGBO(38, 47, 113, 1)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  child: Card(
                    shadowColor: Colors.white,
                    elevation: 2,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 60,
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: TextFormField(
                              validator: (value) {
                                if (value.length == 0) {
                                  return ' Parent Name can not be empty';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  focusedBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                    color: Color.fromRGBO(227, 109, 166, 1),
                                  )),
                                  enabledBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                    color: Color.fromRGBO(227, 109, 166, 1),
                                  )),
                                  hintText: 'Parent Name',
                                  suffixIcon: IconButton(
                                      color: Color.fromRGBO(227, 109, 166, 1),
                                      onPressed: () {},
                                      icon: Icon(Icons.account_box_outlined))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: TextFormField(
                              maxLength: 10,
                              buildCounter: (BuildContext context,
                                      {int currentLength,
                                      int maxLength,
                                      bool isFocused}) =>
                                  null,
                              validator: (value) {
                                if (value.length == 0) {
                                  return 'Mobile Number can not be empty';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  focusedBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                    color: Color.fromRGBO(227, 109, 166, 1),
                                  )),
                                  enabledBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                    color: Color.fromRGBO(227, 109, 166, 1),
                                  )),
                                  hintText: 'Mobile Number',
                                  suffixIcon: IconButton(
                                      color: Color.fromRGBO(227, 109, 166, 1),
                                      onPressed: () {},
                                      icon: Icon(Icons.phone_android))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: TextFormField(
                              validator: (value) {
                                if (value.length == 0) {
                                  return 'Email can not be empty';
                                } else {
                                  if (!value.contains('@')) {
                                    return 'Invalid email must contains  "@"';
                                  } else {
                                    return null;
                                  }
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  focusedBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                    color: Color.fromRGBO(227, 109, 166, 1),
                                  )),
                                  enabledBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                    color: Color.fromRGBO(227, 109, 166, 1),
                                  )),
                                  hintText: 'Email Id',
                                  suffixIcon: IconButton(
                                      color: Color.fromRGBO(227, 109, 166, 1),
                                      onPressed: () {},
                                      icon: Icon(Icons.email_outlined))),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: TextFormField(
                              validator: (value) {
                                if (value.length == 0) {
                                  return 'Select your City';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  focusedBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                    color: Color.fromRGBO(227, 109, 166, 1),
                                  )),
                                  enabledBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                    color: Color.fromRGBO(227, 109, 166, 1),
                                  )),
                                  hintText: 'City',
                                  suffixIcon: IconButton(
                                      color: Color.fromRGBO(227, 109, 166, 1),
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_drop_down))),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "  Number Of Children",
                              style: TextStyle(
                                  color: Color.fromRGBO(227, 109, 166, 1),
                                  fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          Row(
                            children: <Widget>[
                              Radio(
                                activeColor: Color.fromRGBO(227, 109, 166, 1),
                                value: 0,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Text("1(One)"),
                              Radio(
                                activeColor: Color.fromRGBO(227, 109, 166, 1),
                                value: 1,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Text("2(Two)"),
                              Radio(
                                activeColor: Color.fromRGBO(227, 109, 166, 1),
                                value: 2,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Text("(More)"),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  focusedBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                    color: Color.fromRGBO(227, 109, 166, 1),
                                  )),
                                  enabledBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                    color: Color.fromRGBO(227, 109, 166, 1),
                                  )),
                                  hintText: 'Relation With Child',
                                  suffixIcon: IconButton(
                                      color: Color.fromRGBO(227, 109, 166, 1),
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_drop_down))),
                            ),
                          ),

                          // Stack(
                          //   children: [
                          //     Padding(
                          //       padding: EdgeInsets.all(10),
                          //       child: Column(
                          //         mainAxisAlignment: MainAxisAlignment.start,
                          //         children: [
                          //           ListTile(
                          //             title: Text("Male"),
                          //             leading: Radio(
                          //               value: 1,
                          //               groupValue: val,
                          //               onChanged: (value) {
                          //                 setState(() {
                          //                   val = value;
                          //                 });
                          //               },
                          //               activeColor: Colors.green,
                          //             ),
                          //           ),
                          //           ListTile(
                          //             title: Text("Female"),
                          //             leading: Radio(
                          //               value: 2,
                          //               groupValue: val,
                          //               onChanged: (value) {
                          //                 setState(() {
                          //                   val = value;
                          //                 });
                          //               },
                          //               activeColor: Colors.green,
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 35,
                            width: 150,
                            // ignore: deprecated_member_use
                            child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                color: Color.fromRGBO(227, 109, 166, 1),
                                onPressed: () {
                                  if (validateAndSave()) {}
                                },
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already Have An Account ?",
                                style: TextStyle(
                                    color: Color.fromRGBO(38, 47, 113, 1)),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
                                  );
                                },
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(38, 47, 113, 5)),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    color: Colors.white,
                  ),
                  padding:
                      const EdgeInsets.only(left: 020.0, right: 0.0, top: 25.0),
                  width: 330,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
                  child: Container(
                    child: Image.asset(
                      "assets/clip.png",
                    ),
                    height: 100.0,
                    width: 80.0,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Skip",
              style: TextStyle(
                  fontSize: 18, color: Color.fromRGBO(38, 47, 113, 1)),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
