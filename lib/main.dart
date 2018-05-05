import 'package:flutter/material.dart';
import 'package:flutter_app/MyFloatingButton.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // Definindo tema do aplicativo
        primarySwatch: Colors.green,
      ),
      home: new MyHomePage(title: 'Primeiro App de Flutter (Contador)'),
    );
  }
}

/// This class is the configuration for the state. It holds the values (in this
/// case the title) provided by the parent (in this case the App widget) and
/// used by the build method of the State. Fields in a Widget subclass are
/// always marked "final".
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  final String title;

  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _isPositive = true;

  void _updateCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

      if (_isPositive) {
        _counter++;
      } else {
        _counter--;
      }

      if (_counter == 20) {
        _isPositive = false;
      } else if (_counter == 0){
        _isPositive = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you ran
          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
          // window in IntelliJ) to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Some e subtraia o contador entre 0 e 20',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _updateCounter,
        tooltip: 'atualizar contador',
        child: (_isPositive ? new Icon(Icons.add) : new Icon(Icons.remove)),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class HomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _angle = 90;
  bool _isRotated = true;

  void _rotate(){
    setState((){
      if(_isRotated) {
        _angle = 45;
        _isRotated = false;
      } else {
        _angle = 90;
        _isRotated = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: new Text(widget.title),
        ),
        body: new Stack(
            children: <Widget>[
//              new Positioned(
//                  bottom: 200.0,
//                  right: 24.0,
//                  child: new Container(
//                    child: new Row(
//                      children: <Widget>[
//                        new Container(
//                          margin: new EdgeInsets.only(right: 16.0),
//                          child: new Text(
//                            'foo1',
//                            style: new TextStyle(
//                              fontSize: 13.0,
//                              fontFamily: 'Roboto',
//                              color: new Color(0xFF9E9E9E),
//                              fontWeight: FontWeight.bold,
//                            ),
//                          ),
//                        ),
//                        new Material(
//                            color: new Color(0xFF9E9E9E),
//                            type: MaterialType.circle,
//                            elevation: 6.0,
//                            child: new GestureDetector(
//                              child: new Container(
//                                  width: 40.0,
//                                  height: 40.0,
//                                  child: new InkWell(
//                                    onTap: (){},
//                                    child: new Center(
//                                      child: new Icon(
//                                        Icons.add,
//                                        color: new Color(0xFFFFFFFF),
//                                      ),
//                                    ),
//                                  )
//                              ),
//                            )
//                        ),
//                      ],
//                    ),
//                  )
//              ),

              new Positioned(
                  bottom: 144.0,
                  right: 24.0,
                  child: new Container(
                    child: new Row(
                      children: <Widget>[
                        new Container(
                          margin: new EdgeInsets.only(right: 16.0),
                          child: new Text(
                            'foo2',
                            style: new TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'Roboto',
                              color: new Color(0xFF9E9E9E),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        new MyFloatingButton(
                            color: new Color(0xFF00BFA5),
                            icon: new Icon(
                              Icons.add,
                              color: new Color(0xFFFFFFFF),
                            ),
                            onTap: (){},
                          width: 40.0,
                          height: 40.0,
                        ),
//                        new Material(
//                            color: new Color(0xFF00BFA5),
//                            type: MaterialType.circle,
//                            elevation: 6.0,
//                            child: new GestureDetector(
//                              child: new Container(
//                                  width: 40.0,
//                                  height: 40.0,
//                                  child: new InkWell(
//                                    onTap: (){},
//                                    child: new Center(
//                                      child: new Icon(
//                                        Icons.add,
//                                        color: new Color(0xFFFFFFFF),
//                                      ),
//                                    ),
//                                  )
//                              ),
//                            )
//                        ),
                      ],
                    ),
                  )
              ),
              new Positioned(
                  bottom: 88.0,
                  right: 24.0,
                  child: new Container(
                    child: new Row(
                      children: <Widget>[
                        new Container(
                          margin: new EdgeInsets.only(right: 16.0),
                          child: new Text(
                            'foo3',
                            style: new TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'Roboto',
                              color: new Color(0xFF9E9E9E),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        new Material(
                            color: new Color(0xFFE57373),
                            type: MaterialType.circle,
                            elevation: 6.0,
                            child: new GestureDetector(
                              child: new Container(
                                  width: 40.0,
                                  height: 40.0,
                                  child: new InkWell(
                                    onTap: (){},
                                    child: new Center(
                                      child: new Icon(
                                        Icons.add,
                                        color: new Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  )
                              ),
                            )
                        ),
                      ],
                    ),
                  )
              ),
              new Positioned(
                bottom: 16.0,
                right: 16.0,
                child: new Material(
                    color: new Color(0xFFE57373),
                    type: MaterialType.circle,
                    elevation: 6.0,
                    child: new GestureDetector(
                      child: new Container(
                          width: 56.0,
                          height: 56.00,
                          child: new InkWell(
                            onTap: _rotate,
                            child: new Center(
                                child: new RotationTransition(
                                  turns: new AlwaysStoppedAnimation(_angle / 360),
                                  child: new Icon(
                                    Icons.add,
                                    color: new Color(0xFFFFFFFF),
                                  ),
                                )
                            ),
                          )
                      ),
                    )
                ),
              ),
            ]
        )
    );
  }
}