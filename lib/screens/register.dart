import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.cloud_upload),
            iconSize: 50.0,
            tooltip: 'Upload To server',
            onPressed: () {
              print('You click upload');
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0),
            child: nameTextField(),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: emailTextField(),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            child: passwordTextField(),
          )
        ],
      ),
    );
  }
}

Widget nameTextField() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Name', hintText: 'your name'),
  );
}

Widget emailTextField() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'E-mail', hintText: 'abc@email.com'),
  );
}

Widget passwordTextField() {
  return TextFormField(
    decoration:
        InputDecoration(labelText: 'Password', hintText: 'more 5 letters'),
  );
}
