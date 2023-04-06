import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 5,
            color: Colors.green,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "01",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "02",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "03",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    ),
  );
}
