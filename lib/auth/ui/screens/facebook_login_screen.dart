import 'package:flutter/material.dart';

class FacebookLoginScreen extends StatefulWidget {
  FacebookLoginScreen({Key key}) : super(key: key);

  @override
  _FacebookLoginScreenState createState() => _FacebookLoginScreenState();
}

class _FacebookLoginScreenState extends State<FacebookLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeadImageWidget(),
            IdiomsListWidget(),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 45.0,
              ),
              child: Column(
                children: [
                  FormLoginWidget(),
                  ButtonForgotPasswordWidget(),
                  DividerLoginCreateAccountWidget(),
                  ButtonCreateAccountWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
        TextField(
          keyboardType: TextInputType.text,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            hintText: 'Teléfono o correo electrónico',
            hintStyle: TextStyle(
              color: Colors.grey.shade500,
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        TextField(
          keyboardType: TextInputType.text,
          obscureText: true,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            hintText: 'Contraseña',
            hintStyle: TextStyle(
              color: Colors.grey.shade500,
            ),
          ),
        ),
        ButtonLoginWidget(),
      ],
    );
  }
}

class ButtonCreateAccountWidget extends StatelessWidget {
  const ButtonCreateAccountWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
        top: 15.0,
      ),
      child: ButtonTheme(
        minWidth: size.width * 0.5,
        height: 40.0,
        child: RaisedButton(
          textColor: Colors.white,
          color: Color(0xFF2FA24B),
          child: Text('Crear cuenta de Facebook'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class DividerLoginCreateAccountWidget extends StatelessWidget {
  const DividerLoginCreateAccountWidget({
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
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Text(
              'o',
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
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
      child: Text(
        '¿Olvidaste tu contraseña?',
        style: TextStyle(
          color: Color(0xFF2470DB),
          fontWeight: FontWeight.bold,
        ),
      ),
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
        height: 40.0,
        child: RaisedButton(
          textColor: Colors.white.withOpacity(0.7),
          color: Color(0xFF1778F3),
          child: Text('Iniciar Sesión'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class HeadImageWidget extends StatelessWidget {
  const HeadImageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.35,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/facebook_login.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class IdiomsListWidget extends StatelessWidget {
  const IdiomsListWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 5.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IdiomWidget(
            text: 'English',
          ),
          CircleIdiomWidget(),
          IdiomWidget(
            text: 'Français',
          ),
          CircleIdiomWidget(),
          IdiomWidget(
            text: 'Más...',
            active: true,
          ),
        ],
      ),
    );
  }
}

class CircleIdiomWidget extends StatelessWidget {
  const CircleIdiomWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3.0,
      height: 3.0,
      decoration: new BoxDecoration(
        color: Colors.grey.shade600,
        shape: BoxShape.circle,
      ),
    );
  }
}

class IdiomWidget extends StatelessWidget {
  const IdiomWidget({
    Key key,
    @required this.text,
    this.active = false,
  }) : super(key: key);

  final String text;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(8.0),
      minWidth: double.minPositive,
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: active ? Color(0xFF2470DB) : Colors.grey.shade500,
        ),
      ),
    );
  }
}
