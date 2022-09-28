import 'package:flutter/material.dart';

class Chose_car extends StatefulWidget {
  const Chose_car({super.key});

  @override
  State<Chose_car> createState() => _Chose_carState();
}

class _Chose_carState extends State<Chose_car> {
  List<Color> Mycolors = [
    Color.fromARGB(255, 39, 35, 35),
    Colors.amber,
  ];
  String car = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Available cars",
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Color.fromARGB(255, 38, 34, 34),
      ),
      body: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: Mycolors)),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              RadioListTile(
                  secondary: Image(
                      width: 120,
                      image: NetworkImage(
                          "https://www.avis.com/content/dam/cars/xl/2021/toyota/2021-toyota-corolla-se-5door-hatchback-white_featured.png")),
                  title: Text(
                    "Toyota",
                    style: TextStyle(color: Colors.amber),
                  ),
                  value: "Toyota",
                  groupValue: car,
                  onChanged: (val) {
                    setState(() {
                      car = val.toString();
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              RadioListTile(
                  secondary: Image(
                      width: 120,
                      image: NetworkImage(
                          "https://www.avis.com/content/dam/cars/m/2019/ford/2019-ford-fiesta-se-5door-2wd-hatchback-grey_featured.png")),
                  title: Text(
                    "Ford",
                    style: TextStyle(color: Colors.amber),
                  ),
                  value: "Ford",
                  groupValue: car,
                  onChanged: (val) {
                    setState(() {
                      car = val.toString();
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              RadioListTile(
                  secondary: Image(
                      width: 120,
                      image: NetworkImage(
                          "https://www.budget.com/content/dam/cars/l/2021/kia/2021-kia-soul-s-5door-hatchback-white_featured.png")),
                  title: Text(
                    "Kia",
                    style: TextStyle(color: Colors.amber),
                  ),
                  value: "Kia",
                  groupValue: car,
                  onChanged: (val) {
                    setState(() {
                      car = val.toString();
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              RadioListTile(
                  secondary: Image(
                      width: 120,
                      image: NetworkImage(
                          "https://www.budget.com/content/dam/cars/l/2021/volkswagen/2021-volkswagen-golf-gti-5door-hatchback-blue.png")),
                  title: Text(
                    "Golf",
                    style: TextStyle(color: Colors.amber),
                  ),
                  value: "Golf",
                  groupValue: car,
                  onChanged: (val) {
                    setState(() {
                      car = val.toString();
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              RadioListTile(
                  secondary: Image(
                      width: 120,
                      image: NetworkImage(
                          "https://static.tcimg.net/vehicles/primary/cf2486b6e1370b30/2022-Chevrolet-Spark-silver-full_color-driver_side_front_quarter.png")),
                  title: Text(
                    "chevrolet ",
                    style: TextStyle(color: Colors.amber),
                  ),
                  value: "chevrolet ",
                  groupValue: car,
                  onChanged: (val) {
                    setState(() {
                      car = val.toString();
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 38, 34, 34)),
                  onPressed: () {
                    setState(() {
                      if (car == "Toyota" ||
                          car == "Ford" ||
                          car == "Kia" ||
                          car == "Golf" ||
                          car == "chevrolet ") {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor:
                                    Color.fromARGB(255, 36, 34, 34),
                                content: Text(
                                  "Successfully selected",
                                  style: TextStyle(color: Colors.amber),
                                ),
                              );
                            });
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor:
                                    Color.fromARGB(255, 36, 34, 34),
                                content: Text(
                                  "Pleas select a car",
                                  style: TextStyle(color: Colors.amber),
                                ),
                              );
                            });
                      }
                    });
                  },
                  child: Text(
                    "Select ",
                    style: TextStyle(color: Colors.amber),
                  ))
            ],
          )),
    );
  }
}
