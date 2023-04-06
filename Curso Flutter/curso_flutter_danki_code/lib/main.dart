import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Exemplo Scaffold"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: const [
              Text(
                "Teste de Scaffold",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 15,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
