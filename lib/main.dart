import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Button_Widget.dart';
import 'globals.dart';
import 'TextFieldWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Global.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextFieldWidget(
              hintText: 'Email',
              obscureText: false,
              prefixIconData: Icons.mail_outline,
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextFieldWidget(
                  hintText: 'Password',
                  obscureText: false,
                  prefixIconData: Icons.lock,
                ),
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Global.mediumBlue),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ButtonWidget(
              title: 'Login',
              hasBorder: false,
            ),
            SizedBox(
              height: 10,
            ),
            ButtonWidget(
              title: 'Sign Up',
              hasBorder: true,
            ),
          ],
        ),
      ),
    );
  }
}
