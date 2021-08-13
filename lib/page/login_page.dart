import 'package:flutter/material.dart';
import 'package:flutter_drawer/page/forgotpass.dart';
import 'package:flutter_drawer/page/signup_page.dart';
import 'package:flutter_drawer/widget/dashboard.dart';
import 'package:flutter_drawer/widget/drawerMenu.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(child: Image.asset("assets/appbar.PNG")),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
              child: Container(child: Image.asset("assets/center.png")),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              child: Text(
                "Sign in to continue",
                style: TextStyle(
                    fontFamily: 'AlegreyaSans',
                    fontSize: 30,
                    color: Color.fromRGBO(38, 47, 113, 1)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 350,
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
                            height: 80,
                          ),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: TextFormField(
                              validator: (value) {
                                if (value.length == 0) {
                                  return 'Mobile Number can not be empty';
                                }
                                return null;
                              },
                              maxLength: 10,
                              buildCounter: (BuildContext context,
                                      {int currentLength,
                                      int maxLength,
                                      bool isFocused}) =>
                                  null,
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
                          SizedBox(
                            height: 20,
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
                                  "Verify",
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
                                "Don't Have An Account ? ",
                                style: TextStyle(
                                    color: Color.fromRGBO(38, 47, 113, 1)),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()),
                                  );
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(38, 47, 113, 5)),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Forgotpass()),
                              );
                            },
                            child: Center(
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color: Color.fromRGBO(227, 109, 166, 1),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    color: Colors.white,
                  ),
                  padding:
                      const EdgeInsets.only(left: 020.0, right: 0.0, top: 25.0),
                  height: 350,
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
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
              child: Text(
                "Skip",
                style: TextStyle(
                    fontSize: 18, color: Color.fromRGBO(38, 47, 113, 1)),
              ),
            )
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
