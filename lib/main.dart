import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  bool _show = false;

  @override
  Widget build(BuildContext context) {
    final double height = _show ? 48 : 0;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: height,
                  width: 180,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.signal_wifi_off),
                      Text('Container')
                    ],
                  ),
                ),
                AnimatedContainer(
                  width: 180,
                  height: height,
                  duration: Duration(milliseconds: 200),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.signal_wifi_off),
                      Text('AnimatedContainer')
                    ],
                  ),
                ),
                Container(
                  height: height,
                  width: 180,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.signal_wifi_off),
                      Text('Container')
                    ],
                  ),
                ),
                AnimatedContainer(
                  width: 180,
                  height: height,
                  duration: Duration(milliseconds: 200),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.signal_wifi_off),
                      Text('AnimatedContainer')
                    ],
                  ),
                ),
                Opacity(
                  opacity: _show ? 1 : 0,
                  child: Container(
                    width: 180,
                    height: height,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.signal_wifi_off),
                        Text('AnimatedOpacity')
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(height: 48, width: 180, color: Colors.red),
                Container(height: 48, width: 180, color: Colors.red),
                Container(width: 180),
                Container(width: 180),
                Container(width: 180),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _show = !_show;
          });
        },
        tooltip: 'Increment',
        child: Icon(!_show ? Icons.play_arrow : Icons.stop),
      ),
    );
  }
}
