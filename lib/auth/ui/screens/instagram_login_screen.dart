import 'package:flutter/material.dart';

// FontAwesome
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstragramLoginScreen extends StatefulWidget {
  InstragramLoginScreen({Key key}) : super(key: key);

  @override
  _InstragramLoginScreenState createState() => _InstragramLoginScreenState();
}

class _InstragramLoginScreenState extends State<InstragramLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height
              : null,
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFCE2876),
                Color(0xFF8335AC),
              ],
            ),
          ),
          child: Column(
            children: [
              LogoWidget(),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 30.0,
                ),
                child: Column(
                  children: [
                    FormLoginWidget(),
                    ButtonForgotPasswordWidget(),
                    DividerLoginWidget(),
                    ButtonLoginWithFacebookdWidget(),
                  ],
                ),
              ),
              SignUpButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonForgotPasswordWidget extends StatelessWidget {
  const ButtonForgotPasswordWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      minWidth: double.minPositive,
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Forgot your login detail?',
            style: TextStyle(
              fontSize: 11.0,
              color: Colors.white54,
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            'Get help signing in.',
            style: TextStyle(
              fontSize: 11.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class DividerLoginWidget extends StatelessWidget {
  const DividerLoginWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Colors.white70,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Text(
              'OR',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.white70,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonLoginWithFacebookdWidget extends StatelessWidget {
  const ButtonLoginWithFacebookdWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      minWidth: double.minPositive,
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.facebookSquare,
            color: Colors.white,
          ),
          SizedBox(
            width: 6.0,
          ),
          Text(
            'Log in with Facebook.',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonSignUp = Container(
      child: ButtonTheme(
        height: 40.0,
        minWidth: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
        ),
        child: RaisedButton(
          textColor: Colors.white,
          color: Colors.white.withOpacity(0.4),
          child: Text('Dont have an account? Sign up.'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide.none,
          ),
          onPressed: () {},
        ),
      ),
    );

    final buttonSignUpPotrait = Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: buttonSignUp,
      ),
    );

    return MediaQuery.of(context).orientation == Orientation.portrait
        ? buttonSignUpPotrait
        : buttonSignUp;
  }
}

class FormLoginWidget extends StatelessWidget {
  const FormLoginWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldWidget(
          hintText: 'Username',
        ),
        SizedBox(
          height: 20.0,
        ),
        TextFieldWidget(
          hintText: 'Password',
          isPassword: true,
        ),
        ButtonLoginWidget()
      ],
    );
  }
}

class ButtonLoginWidget extends StatelessWidget {
  const ButtonLoginWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 15.0,
      ),
      child: ButtonTheme(
        minWidth: double.infinity,
        height: 50.0,
        child: FlatButton(
          textColor: Colors.white,
          color: Colors.transparent,
          child: Text('Log in'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              3.0,
            ),
            side: BorderSide(
              color: Colors.white,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    @required this.hintText,
    this.isPassword = false,
    Key key,
  }) : super(key: key);

  final String hintText;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      textAlign: TextAlign.left,
      cursorColor: Colors.white,
      obscureText: isPassword ? true : false,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),
        contentPadding: EdgeInsets.all(15.0),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 140.0,
        bottom: 20.0,
      ),
      child: Center(
        child: Image.asset(
          "assets/images/instagram.png",
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
