import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final data;
  const Details({super.key, this.data});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[200],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shop,
              size: 30,
              color: Colors.orange,
            ),
            Text(
              " Sauzxa ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Shop",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Image.asset(widget.data["imagepath"]),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                widget.data["title"],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              widget.data["subtitle"],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.grey[150]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              widget.data["price"],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ], // bach taccider ghir l vars li kaian fl class l parent
      ),
    );
  }
}
