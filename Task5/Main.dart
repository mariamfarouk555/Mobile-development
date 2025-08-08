import 'package:flutter/material.dart';

void main() {
  runApp(Task5App());
}

class Task5App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task5(),
    );
  }
}

class Task5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Task 5',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              color: Colors.blue[100],
              padding: EdgeInsets.all(12),
              child: Center(
                child: Text(
                  "Mohamed Wael Mahdi",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              color: Colors.blue[100],
              padding: EdgeInsets.all(12),
              child: Center(
                child: Text(
                  "Life is like riding a bicycle. To keep your balance, you must keep moving.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: List.generate(
                      5,
                          (index) => Icon(Icons.star, color: Colors.amber),
                    ),
                  ),
                  Text(
                    "0 Reviews",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.accessibility_new, color: Colors.green),
                      Text("PREP:"),
                      Text("25 min")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_time, color: Colors.green),
                      Text("cooks:"),
                      Text("1 hr")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.restaurant, color: Colors.green),
                      Text("FEEDS:"),
                      Text("4-6")
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
