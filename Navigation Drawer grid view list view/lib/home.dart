import 'package:flutter/material.dart';
import 'package:fluttera/student.dart';

import 'main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Page 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage2(),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key});

  @override
  State<MyHomePage2> createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage2> {
List<Student> stlist =[
 Student("Aziz", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took", "https://t4.ftcdn.net/jpg/05/43/71/63/360_F_543716302_0jeR6StkHVTbNRQe887yQUpP1Dkq3Z3Q.jpg") ,
  Student("Aziz", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took", "https://e7.pngegg.com/pngimages/119/921/png-clipart-flower-dahlia-flower-flower-garden-annual-plant-thumbnail.png") ,
  Student("Aziz", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScAkItxr0Ow2wGzdkCPgPGuvVqe1yQDNPRPQnMCn8Ttt-EaRVIw__l0Mild_shCsVcNxU&usqp=CAU") ,
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Page 1 Title"),
      ),
      body:ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: stlist.length,
        itemBuilder: (
            BuildContext context, int index){
          return Center(
            child: Card(
              elevation: 50,
              shadowColor: Colors.black ,
              color: Colors.amber[100],
              child: SizedBox(
                width: 300,
                height: 500,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100,
                        backgroundImage: NetworkImage(stlist[index].photo.toString(),),
                      ),
                      SizedBox(height: 10,),
                      Text(stlist[index].name.toString(),style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),),

                      SizedBox(height: 10,),
                      Text(stlist[index].details.toString(),style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),),

                      SizedBox(height: 20,),
                      SizedBox(
                        width: 300,
                        child: ElevatedButton(
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget> [
                                Text("Back To Home"),

                              ],
                              ),
                          ),
                          onPressed: () {  }, style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Colors.green
                          )
                        ),

                        ),
                      ),
                    ],
                  ),
                ),

              ),
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
