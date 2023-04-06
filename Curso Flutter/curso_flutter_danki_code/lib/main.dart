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
        child: const Image(
          image: AssetImage("images/mario.jpg"),
          fit: BoxFit.contain,
        ),
      ),
    ),
  );
}
