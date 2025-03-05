import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.grey[200],
                          hintText: "Search",
                          prefixIcon: Icon(
                            Icons.search,
                          )),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.menu, size: 40),
                ),
              ],
            ),
            Container(height: 30),
            Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // scrollDirection: Axis.vertical,
              children: [
                Column(children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey[200],
                    ),
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      "images/shoes.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(height: 5),
                  Text(
                    "men",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ]),
                Column(children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey[200],
                    ),
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      "images/shoeswomen.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(height: 5),
                  Text(
                    "women",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ]),
                Column(children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey[200],
                    ),
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      "images/electrical.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(height: 5),
                  Text(
                    "Electrical",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ]),
                Column(children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey[200],
                    ),
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      "images/hobbies.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(height: 5),
                  Text(
                    "hobbies",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
