import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List Categories = [
    {'imagepath': 'images/car.jpg', 'categoriename': 'Cars'},
    {'imagepath': 'images/electrical.jpg', 'categoriename': 'Electricals'},
    {'imagepath': 'images/hobbies.jpg', 'categoriename': 'Hobbies'},
    {'imagepath': 'images/motorcycle.jpg', 'categoriename': 'Motorcycles'},
    {'imagepath': 'images/shoes.jpg', 'categoriename': 'Men'},
    {'imagepath': 'images/shoeswomen.jpg', 'categoriename': 'Women'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            // 🔍 Search Bar + Menu Icon
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
                      prefixIcon: Icon(Icons.search, color: Colors.orange),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.menu, size: 40),
                ),
              ],
            ),
            SizedBox(height: 30),

            // 📌 Categories Title
            Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 10),

            // 📌 Categories List
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Categories.length,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey[200],
                          ),
                          height: 60,
                          width: 60,
                          child: Image.asset(
                            Categories[i]["imagepath"], // ✅ Correction ici
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          Categories[i]["categoriename"],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),

            // 📌 Best Selling Title
            Text(
              "Best Selling",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 10),

            // 🛍️ Product Grid
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 250, // ✅ Correction ici
              ),
              itemCount: 6, // Supposons que tu as 6 produits
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: double.infinity,
                        height: 160, // ✅ Correction ici
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          "images/headphones.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Logitech G 231",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              "Bluetooth Headphone",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey[600]),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "\$359",
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
