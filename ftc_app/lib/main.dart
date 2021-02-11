import 'package:flutter/material.dart';

import 'signup.dart';

//TODO: Fix KeyBoard OverFlow Problem

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage()
      },
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<String> _CreatForgotPassword(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Enter Email"),
            content: TextField(
              controller: controller,
              decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple))),
            ),
            actions: [
              MaterialButton(
                elevation: 5.0,
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop(controller.text.toString());
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: SingleChildScrollView(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                child: Text('FTC',
                    style:
                        TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
                child: Text('App',
                    style:
                        TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple))),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple))),
                  obscureText: true,
                ),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0, left: 20.0),
                  child: InkWell(
                    onTap: () {
                      _CreatForgotPassword(context).then((value) => {});
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.purpleAccent,
                    color: Colors.deepPurple,
                    elevation: 7.0,
                    child: GestureDetector(
                      child: Center(
                        child: Text(
                          'SIGN IN',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
        SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'New To FTC?',
            ),
            SizedBox(width: 5.0),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/signup');
              },
              child: Text(
                'Register Now!',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
            )
          ],
        )
      ],
    )));
  }
}
