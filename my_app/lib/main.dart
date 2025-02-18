import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Project 1"),
              backgroundColor: Colors.blue,
            ),
            body: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      width: 1000,
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xffe6f0fa),
                          border: Border.all(color: Colors.black)),
                      child: const Text(
                        "Strawberry Pavlova",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: 1000,
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xffe6f0fa),
                          border: Border.all(color: Colors.black)),
                      child: const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo saepe tempore consectetur dicta magnam possimus voluptatibus animi  ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    ),
                    Container(
                        width: 1000,
                        margin: EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color(0xffe6f0fa),
                            border: Border.all(color: Colors.black)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star, size: 17),
                                Icon(Icons.star, size: 17),
                                Icon(Icons.star, size: 17),
                                Icon(Icons.star, size: 17),
                                Icon(Icons.star, size: 17),
                              ],
                            ),
                            Text("170 Reviews")
                          ],
                        ))
                  ],
                ))));
  }
}
