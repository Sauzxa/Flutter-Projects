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
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      width: 1000,
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xffe6f0fa),
                          border: Border.all(color: Colors.black)),
                      child: const Text(
                        "Strawberry Pavlova",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    )
                  ],
                ))));
  }
}
