import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Container(
        padding: const EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          border: Border.all(
            width: 5,
            color: Colors.green,
          ),
        ),
        child: Column(
          children: const [
            Text("Teste01"),
            Text("Teste02"),
            Text("Teste03"),
          ],
        ),
      ),
    ),
  );
}
