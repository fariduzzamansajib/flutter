import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  bool? x=true;
  String? g="";
  String? dd="web";
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(controller: t1, decoration: InputDecoration(labelText: "Email",
              hintText: "Enter Your Email",
                icon: Icon(Icons.email),
                  border: OutlineInputBorder
                    (borderRadius: BorderRadius.all(Radius.circular((10)))
                  ),
              ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: TextField( controller: t2,
                decoration: InputDecoration(labelText: "Password",
                  hintText: "Enter Your Password",
                  icon: Icon(Icons.password),
                  border: OutlineInputBorder
                    (borderRadius: BorderRadius.all(Radius.circular((10),
                  ),
                  ),
                  ),
                ),
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                      child:
                        Checkbox(value: x, onChanged: (bool? value){
                          setState(() {
                            x=value;
                            SnackBar s= SnackBar(content: Text(x.toString()));
                            ScaffoldMessenger.of(context).showSnackBar(s);
                          });
                        }),

                      ),
                Text("Java"),
              ],
            ),
            Row(
              children: [
                Radio<String>(value: 'female', groupValue: g, onChanged: (String? value){
                  setState(() {
                    g=value;
                    SnackBar s= SnackBar(content: Text(g.toString()));
                    ScaffoldMessenger.of(context).showSnackBar(s);
                  });
                }),
                Text("Female"),
              ],
            ),
            Row(
              children: [
                Radio<String>(value: 'male', groupValue: g, onChanged: (String? value){
                  setState(() {
                    g=value;
                    SnackBar s= SnackBar(content: Text(g.toString()));
                    ScaffoldMessenger.of(context).showSnackBar(s);
                  });
                }),
                Text("Male"),
              ],
            ),

            Row(
              children: [
                DropdownButton(
                    value: dd ,
                    items: <DropdownMenuItem<String>>[
                      DropdownMenuItem<String>(child: Text("Web", ), value:"web"),
                      DropdownMenuItem<String>(child: Text("Image", ), value:"image"),
                      DropdownMenuItem<String>(child: Text("News", ), value:"news"),
                      DropdownMenuItem<String>(child: Text("Shoping", ), value:"shoping"),

                    ],
                    onChanged: (String? value){
                      setState(() {
                        dd=value;
                        SnackBar s= SnackBar(content: Text(dd.toString()));
                        ScaffoldMessenger.of(context).showSnackBar(s);
                      });
                    }
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ElevatedButton(onPressed: (){
                    SnackBar s = SnackBar(content: Text(t1.text + " " + t2.text,),);
                    ScaffoldMessenger.of(context).showSnackBar(s);
                  },
                    child: Text("Submit",style: TextStyle(color: Colors.white,
                    ),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),

                  ),
                ),

              ],
            ),


          ],
        ),
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
