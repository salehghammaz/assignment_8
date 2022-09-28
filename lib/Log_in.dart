import 'package:flutter/material.dart';
import 'package:myapp/Chose_car.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  @override
  List<Color> Mycolors = [
    Color.fromARGB(255, 39, 35, 35),
    Colors.amber,
  ];
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final myController = TextEditingController();
  String val = "saleh@gmail.com";
  String val1 = "saleh123";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 38, 34, 34),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: Mycolors)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    prefixIcon: Icon(Icons.email,
                        color: Color.fromARGB(255, 184, 145, 30)),
                    label: Text(
                      "Enter your email",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                obscuringCharacter: "*",
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    prefixIcon: Icon(Icons.lock,
                        color: Color.fromARGB(255, 184, 145, 30)),
                    label: Text(
                      "Enter the password",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 38, 34, 34)),
                  onPressed: () {
                    if (emailController.text == val &&
                        passwordController.text == val1) {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Chose_car();
                        },
                      ));
                    }else{ showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor:
                                    Color.fromARGB(255, 36, 34, 34),
                                content: Text(
                                  "There is an error",
                                  style: TextStyle(color: Colors.amber),
                                ),
                              );
                            });}
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
