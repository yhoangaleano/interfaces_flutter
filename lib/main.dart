import 'package:flutter/material.dart';

// Screen
import 'package:interfaces_flutter/auth/ui/screens/facebook_login_screen.dart';
import 'package:interfaces_flutter/auth/ui/screens/contact_users_screen.dart';
import 'package:interfaces_flutter/auth/ui/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login en Flutter Cotrafa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        buttonColor: Colors.blueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FacebookLoginScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter;

  @override
  void initState() {
    super.initState();
    // Escribo despúes
    this._counter = 0;
  }

  @override
  void dispose() {
    // Libero el espacio en memoria
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: MyBody(counter: _counter),
      floatingActionButton: MyFloatingButton(onPressed: _incrementCounter),
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({
    @required this.counter,
    Key key,
  }) : super(key: key);

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}

class MyFloatingButton extends StatelessWidget {
  const MyFloatingButton({
    @required this.onPressed,
    Key key,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
