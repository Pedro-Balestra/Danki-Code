import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double valor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo SingleChildScrollView"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 200,
              color: Colors.green,
            ),
            Container(
              width: 200,
              color: Colors.red,
            ),
            Container(
              width: 200,
              color: Colors.orange,
            ),
            Container(
              width: 200,
              color: Colors.yellow,
            ),
            Container(
              width: 200,
              color: Colors.blue,
            ),
            Container(
              width: 200,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
