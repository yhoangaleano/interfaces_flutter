import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter login demo'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 100.0),
          child: Column(
            children: [
              FlutterLogo(
                size: 110.0,
              ),
              Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'jhondoe@mail.com',
                      prefixIcon: Icon(
                        Icons.mail,
                      ),
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: '12345678',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: ButtonTheme(
                      minWidth: double.infinity,
                      height: 40.0,
                      child: RaisedButton(
                        textColor: Colors.white,
                        child: Text('Login'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  FlatButton(
                      onPressed: null, child: Text('Create user account'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
