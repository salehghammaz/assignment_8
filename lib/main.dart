import 'package:flutter/material.dart';
import 'package:myapp/Log_in.dart';
import 'package:myapp/Search_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Color> Mycolors = [Color.fromARGB(255, 30, 29, 29), Colors.amber];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 38, 34, 34),
        title: Text("rent a car", style: TextStyle(color: Colors.amber)),
        actions: [Padding(padding: EdgeInsets.all(20)), Icon(Icons.car_rental,color: Colors.amber,)],
      ),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: Mycolors)),
        child: Center(
          child: Column(
            children: [
              Image(
                  image: NetworkImage(
                      "https://www.cycarhire.com/views/images/uploaded/car%20hire%20paphos%20airport.jpg")),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 38, 34, 34)),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Search_screen();
                      }));
                    });
                  },
                  icon: Icon(Icons.car_rental,color: Colors.amber,),
                  label: Text("Search here",
                      style: TextStyle(color: Colors.amber))),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 38, 34, 34)),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Log_in();
                      }));
                    });
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(color: Colors.amber),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
