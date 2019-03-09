import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>(); //ตัวแปร Key

  String nameString = '';
  String emailString = '';
  String passwordString = '';

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
                uploadToServer();
              },
            )
          ],
        ),
        body: Form(
          key: formKey,
          child: ListView(
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
        ));
  }

  void uploadToServer() {
    print('You click Upload'); //return ค่าจะอยู่ที่ console
    //formKey.currentState.reset();  //refresh form
    print(formKey.currentState.validate());
    formKey.currentState.save();
    print('Name = $nameString, Email=$emailString, Password=$passwordString');
    
  }

  Widget nameTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name', hintText: 'your name'),
      validator: (String value) {
        if (value.length == 0) {
          return 'Please input your name'; //return ที่หน้า pages
        }
      },
      onSaved: (String name) {
        nameString = name;
      },
    );
  }

  Widget emailTextField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'E-mail', hintText: 'abc@email.com'),
      validator: (String value) {
        if (!value.contains(
            '@')) //เช็คหา @ ใน Email ตัวนี้ลองใช้เอง (value.indexOf('@') == -1)
        {
          return 'Please input correct Email';
        }
      },
      onSaved: (String email) {
        emailString = email;
      },
    );
  }

  Widget passwordTextField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Password', hintText: 'more 5 letters'),
      validator: (String value) {
        if (value.length <= 5) {
          return 'Your password must more than 5 letters';
        }
      },
      onSaved: (String pass) {
        passwordString = pass;
      },
    );
  }
} //class _RegisterState
