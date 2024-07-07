import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:student/showall.dart';


//Nicher 2 line e sodo Classer nam change korte parbo. Onno gula change korar dorkar nai.
// Ekhane Classer nam Student.
List<Student> objectsFromJson(String str) =>
    List<Student>.from(json.decode(str).map((x) => Student.fromJson(x)));
// 1st line e json theke object banaichi
String objectsToJson(List<Student> data) =>
    json.encode(List<Student>.from(data.map((x) => x.toJson())));
//2nd line object theke json banaichi



class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  TextEditingController _id = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _round = TextEditingController();

  Future<Student> singupStudent() async {
    //async keyword use korle prothome Future keyword use korte hobe
    Student s = Student(
        id: int.parse(_id.text),
        name: _name.text,
        email: _email.text,
        round: _round.text);
    final response = await http.post(
        Uri.parse('http://192.168.0.75:8080/insert'),
        body: jsonEncode(s.toJson()),
        headers: {'content-type': 'application/json'});
    if (response.statusCode == 200) {
      return Student.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Eorr");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sing Up"),
      ),
      body: Form(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: TextFormField(
                  controller: _id,
                  decoration: InputDecoration(
                    labelText: 'Id',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: TextFormField(
                  controller: _name,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: TextFormField(
                  controller: _round,
                  decoration: InputDecoration(
                    labelText: 'Round',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                child: Text("Sing Up"),
                onPressed: () async {
                  Student st = await singupStudent();
                  // if (st != null) {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => MyApp()));
                  // } else if (_id.text.length == 0 || _name.text.length == 0) {
                  //   SnackBar snk =
                  //       SnackBar(content: Text("Enter Correct Info"));
                  //   ScaffoldMessenger.of(context).showSnackBar(snk);
                  // }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
