import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:student/main.dart';


List<Student>objectsFromJson( String str) =>List<Student>.from(json.decode(str).map((x)=> Student.fromJson(x)));
String objectsToJson(List<Student> data)=> json.encode(List<Student>.from(data.map((x)=>x.toJson())));
class Student{
  int? id;
  String? name;
  String? email;
  String? round;

  Student({ required this.id, this.name, this.email, this.round});
  factory Student.fromJson(Map<String, dynamic> json) =>Student(id: json["id"], name: json["name"], email: json["email"], round: json["round"]);
  Map<String, dynamic>toJson(){
    return{
      "id":id,
      "name":name,
      "email":email,
      "round":round

  };
  }

}


class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {

  TextEditingController  _id=TextEditingController();
  TextEditingController  _name=TextEditingController();
  TextEditingController  _email=TextEditingController();
  TextEditingController  _round=TextEditingController();

  Future<Student>singupStudent()async{
    Student s= Student(id: int.parse(_id.text), name: _name.text, email: _email.text, round: _round.text);
    final response=await http.post(
      Uri.parse('http://192.168.0.75:8080/insert'),
      body: jsonEncode(s.toJson()),
      headers: {
        'content-type':'application/json'
      }
    );
    if(response.statusCode==200){
      return Student.fromJson(jsonDecode(response.body));

    }else{
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
              Padding(padding: EdgeInsets.all(5.0),
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
              Padding(padding: EdgeInsets.all(5.0),
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
              Padding(padding: EdgeInsets.all(5.0),
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
              Padding(padding: EdgeInsets.all(5.0),
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
                  onPressed: () async{
                    Student st = await singupStudent();
                    if(st!=null){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                    }else if(_id.text.length == 0||_name.text.length ==0 ){
                      SnackBar snk = SnackBar(content: Text("Enter Correct Info"));
                      ScaffoldMessenger.of(context).showSnackBar(snk);

                    }

                  },
              ),
            ],

          ),

        ),

      ),

    );

  }
}
