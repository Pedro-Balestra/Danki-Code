import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var listaProdutos = [
    {"name": "X Salada", "preco": 14.00, "foto": "images/xsalada.jpg"},
    {"name": "X Bacon", "preco": 13.00, "foto": "images/xbacon.jpg"},
    {"name": "X Tudo", "preco": 54.00, "foto": "images/xtudo.jpg"},
    {"name": "Mortadela", "preco": 54.00, "foto": "images/mortadela.jpg"},
    {"name": "Misto Quente", "preco": 4.00, "foto": "images/mistoquente.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manipulando ListView.Builder"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView.builder(
        itemCount: listaProdutos.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset(
                  listaProdutos[index]["foto"].toString(),
                  fit: BoxFit.cover,
                ),
                Text(
                  listaProdutos[index]["name"].toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
