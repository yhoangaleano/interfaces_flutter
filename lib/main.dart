import 'package:flutter/material.dart';

// Screen
import 'package:interfaces_flutter/auth/ui/screens/contact_users_screen.dart';
import 'package:interfaces_flutter/auth/ui/screens/facebook_login_screen.dart';
import 'package:interfaces_flutter/auth/ui/screens/instagram_login_screen.dart';
import 'package:interfaces_flutter/auth/ui/screens/login_screen.dart';
import 'package:interfaces_flutter/auth/ui/screens/menu_screen.dart';
import 'package:interfaces_flutter/auth/ui/screens/stream_builder_screen.dart';
import 'package:interfaces_flutter/auth/ui/screens/streams_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login en Flutter Cotrafa',
        initialRoute: '/',
        routes: {
          '/': (context) => MenuScreen(),
          '/contact': (context) => ContactUserScreen(),
          '/facebook': (context) => FacebookLoginScreen(),
          '/instagram': (context) => InstragramLoginScreen(),
          '/login': (context) => LoginScreen(),
          '/streamBuilder': (context) => StreamBuilderScreen(),
          '/stream': (context) => StreamsScreen(),
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
          buttonColor: Colors.blueAccent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ));
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

class SlideRightRoute extends PageRouteBuilder {
  final Widget widget;
  SlideRightRoute({this.widget})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return new SlideTransition(
              position: new Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
}
