import 'package:flutter/material.dart';
import 'package:whereami/map.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find out where you are',
      routes: {
        '/map': (context) => map(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Find out where you are.'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Where am I?',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
            ),
            backgroundColor: Color(0xFF0E8A70)),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 50),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 100),
                ),
                icon: Icon(Icons.map),
                label: Text("Let's find you!"),
                onPressed: () => Navigator.pushNamed(context, '/map'),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ));
  }
}
