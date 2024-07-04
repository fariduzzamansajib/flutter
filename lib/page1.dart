import 'package:flutter/material.dart';

import 'home.dart';
import 'main.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Page 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage1(),
    );
  }
}

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({super.key});

  @override
  State<MyHomePage1> createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  List<String> student =["Rahim", "Aziz", "Sazid", "Prity Kotti", "Captain Somon"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Page 1 Title"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
          itemCount: student.length,
          itemBuilder: (
          BuildContext context, int index){
          return Container(
          margin: EdgeInsets.all(2.0),
          height: 50,
          color: Colors.amber[500],
          child: Center(
          child: Text(student [index]),
      ),
          );
      },

      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        tooltip: "Go Home",
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
        },
      ),
    );
  }
}
