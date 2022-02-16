import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  var _formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Form(
            key: _formkey,
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.lightGreen,
                    Colors.lightGreen,
                  ], begin: Alignment.topLeft, end: Alignment.centerRight),
                ),
                child: Column(children: [
                  SizedBox(height: 100.0),
                  Text('Login',
                      style: TextStyle(color: Colors.white, fontSize: 50, shadows: [
                        Shadow(blurRadius: 10.0, color: Colors.black)
                      ])),
                  SizedBox(height: 30),
                  Container(
                    height: 350,
                    width: 250,
                    padding: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                      SizedBox(height: 20),
                      Container(
                          width: 220,
                          child: TextFormField(
                            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0), borderSide: BorderSide(color: Colors.grey, width: 2.0)), labelText: 'Phone Number', hintText: "phone-no"),
                          )),
                      SizedBox(height: 20),
                      Container(
                          width: 220,
                          child: TextFormField(
                            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0), borderSide: BorderSide(color: Colors.grey, width: 2.0)), labelText: 'Password', hintText: "Always 8 symbols"),
                            validator: (String? val) {
                              if (val != null) {
                                return 'please enter password';
                              }

                              if ((val!.length > 9)) {
                                return 'please enter password';
                              }
                            },
                          )),
                      SizedBox(height: 50),
                      SizedBox(
                          width: 220,
                          height: 50,
                          child: RaisedButton(
                              onPressed: () {
                                print('Login Button Pressed');
                                _formkey.currentState?.validate();
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: BorderSide(color: Colors.lightGreen, width: 1),
                              ),
                              color: Colors.white,
                              child: Text('LOGIN',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                  )))),
                      SizedBox(height: 10),
                      Text('Signup',
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 20,
                            decoration: TextDecoration.underline,
                          ))
                    ]),
                  ),
                ]))));

    throw UnimplementedError();
  }
}
