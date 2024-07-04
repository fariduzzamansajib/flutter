import 'package:flutter/material.dart';
import 'package:fluttera/navbar.dart';
import 'package:fluttera/page1.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Pos Management System'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        title: Text('Pos Management System'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(20.0),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              primary: false,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox.fromSize(
                    size: Size(80, 80),
                    child: ClipOval(
                      child: Material(
                        color: Colors.green,
                        child: InkWell(
                            splashColor: Colors.lightGreenAccent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.man,
                                  size: 50,
                                ),
                                Text(
                                  "Person Info",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox.fromSize(
                    size: Size(80, 80),
                    child: ClipOval(
                      child: Material(
                        color: Colors.green,
                        child: InkWell(
                            splashColor: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.email,
                                  size: 50,
                                ),
                                Text(
                                  "Email",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Page1(),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox.fromSize(
                    size: Size(80, 80),
                    child: ClipOval(
                      child: Material(
                        color: Colors.green,
                        child: InkWell(
                            splashColor: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.call,
                                  size: 50,
                                ),
                                Text(
                                  "Contact",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Page1(),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox.fromSize(
                    size: Size(80, 80),
                    child: ClipOval(
                      child: Material(
                        color: Colors.orange,
                        child: InkWell(
                            splashColor: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.email,
                                  size: 50,
                                ),
                                Text(
                                  "Contact",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Page1(),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox.fromSize(
                    size: Size(80, 80),
                    child: ClipOval(
                      child: Material(
                        color: Colors.orange,
                        child: InkWell(
                            splashColor: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.email,
                                  size: 50,
                                ),
                                Text(
                                  "Contact",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Page1(),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox.fromSize(
                    size: Size(80, 80),
                    child: ClipOval(
                      child: Material(
                        color: Colors.orange,
                        child: InkWell(
                            splashColor: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.email,
                                  size: 50,
                                ),
                                Text(
                                  "Contact",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Page1(),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.home),
        tooltip: "GO HOME",
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Page1()));
        },
      ),
    );
  }
}


