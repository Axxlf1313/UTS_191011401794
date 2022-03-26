import 'package:flutter/material.dart';

void main() => runApp(BelajarGridView());

class BelajarGridView extends StatelessWidget {
  final List gridnumber = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Eleven",
    "Twelve"
  ];
  final List gridColours = [
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.red,
    Colors.amber,
    Colors.blueAccent,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.red,
    Colors.amber,
    Colors.green
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Alfyan Tria Putra"),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(gridnumber.length, (index) {
            return Container(
              height: 100,
              child: Card(
                child: Center(
                    child: Text(gridnumber[index],
                        style: TextStyle(color: Colors.white, fontSize: 20))),
                color: gridColours[index],
              ),
            );
          }),
        ),
      ),
    );
  }
}
