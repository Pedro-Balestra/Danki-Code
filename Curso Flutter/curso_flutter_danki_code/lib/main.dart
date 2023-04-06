import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: Column(
          children: const [
            Text("Texto 01"),
            Text("Texto 02"),
            Text("Texto 03"),
          ],
        ),
      ),
    ),
  );
}
