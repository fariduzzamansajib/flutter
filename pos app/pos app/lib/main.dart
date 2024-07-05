import 'package:flutter/material.dart';
import 'package:pos/inventory.dart';
import 'package:pos/navbar.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        title: Text("Pos Management System"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
            height: 660,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(90),
                bottomLeft: Radius.circular(90),
              ),
            ),
            child:
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
                                    Icons.search,
                                    size: 50,
                                  ),
                                  Text(
                                    "Seach Product",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Inventory(),
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
                                    Icons.list,
                                    size: 50,
                                  ),
                                  Text(
                                    "Inventory List",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Inventory(),
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
                                    Icons.monitor,
                                    size: 50,
                                  ),
                                  Text(
                                    " Summary",
                                    style: TextStyle(fontSize: 20, ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Inventory(),
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
                                    Icons.people,
                                    size: 50,
                                  ),
                                  Text(
                                    "Employee",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Inventory(),
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
                                    Icons.inventory,
                                    size: 50,
                                  ),
                                  Text(
                                    "Add Inventory",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Inventory(),
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
                                    Icons.arrow_right,
                                    size: 50,
                                  ),
                                  Text(
                                    "More Details",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Inventory(),
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
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
