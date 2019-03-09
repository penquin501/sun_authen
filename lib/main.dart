import 'package:flutter/material.dart';
import 'screens/register.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sun Authen',
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
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 50.0),
            child: logoShow(),
          ),
          Container(
            alignment: Alignment.center,
            child: titleApp(),
          ),
          Container(
            margin: EdgeInsets.only(left: 30.0, right: 30.0),
            child: emailTextField(),
          ),
          Container(
            margin: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20.0),
            child: passwordTextField(),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            child: Row(
              children: <Widget>[
                new Expanded(
                  child: Container(
                    child: signInButton(),
                  ),
                ),
                new Expanded(
                  child: Container(
                    child: signUpButton(context),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget testText() {
  return Text('testText');
}

Widget logoShow() {
  return Image.asset('images/logo.png');
}

Widget titleApp() {
  return Text(
    'Sun Authen',
    style: TextStyle(
        fontSize: 30.0,
        fontFamily: 'Hind',
        fontWeight: FontWeight.bold,
        color: Colors.lightBlue[700]),
  );
}

Widget emailTextField() {
  return TextFormField(
    decoration: InputDecoration(
        labelText: 'Email Address:', hintText: 'youremail@Email.com'),
  );
}

Widget passwordTextField() {
  return TextFormField(
    obscureText: true,  //ซ่อนรหัสผ่าน
    decoration:
        InputDecoration(labelText: 'Password:', hintText: 'more 5 letters'),
  );
}

Widget signInButton() {
  return RaisedButton(
    color: Colors.lightBlue[400],
    child: Text(
      'Sign in',
      style: TextStyle(color: Colors.white),
    ),
    onPressed: () {
      print('You Click Sign In');
    },
  );
}

Widget signUpButton(BuildContext context) {
  return RaisedButton(
    color: Colors.lightBlue[200],
    child: Text(
      'Sign up',
      style: TextStyle(color: Colors.white70),
    ),
    onPressed: () {
      print('You Click Sign Up');
      var myRoute =
          new MaterialPageRoute(builder: (BuildContext context) => Register());
      Navigator.of(context).push(myRoute);
    },
  );
}
