import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class StreamBuilderScreen extends StatefulWidget {
  StreamBuilderScreen({Key key}) : super(key: key);

  @override
  _StreamBuilderScreenState createState() => _StreamBuilderScreenState();
}

class _StreamBuilderScreenState extends State<StreamBuilderScreen> {
  final colorStream = new StreamController<Color>();

  @override
  void dispose() {
    colorStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: colorStream.stream,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return LoadingWidget();
            }

            if (snapshot.connectionState == ConnectionState.done) {
              return Center(
                child: Text('Fin del stream :)'),
              );
            }

            return AnimatedContainer(
              duration: Duration(seconds: 1),
              decoration: BoxDecoration(
                color: snapshot.data,
              ),
              curve: Curves.fastOutSlowIn,
              height: size.height,
              width: size.width,
            );
          },
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //store btn
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: <Widget>[
            FloatingActionButton(
              heroTag: "btn1",
              onPressed: () {
                colorStream.sink.add(
                    Color((Random().nextDouble() * 0xFFFFFF).toInt())
                        .withOpacity(1.0));
              },
              child: Icon(
                Icons.color_lens,
              ),
            ),
            Spacer(
              flex: 1,
            ),
            FloatingActionButton(
              onPressed: () {
                colorStream.close();
              },
              child: Icon(
                Icons.close,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Esperando clicks'),
        SizedBox(
          height: 20.0,
        ),
        CircularProgressIndicator()
      ],
    );
  }
}
