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
        title: const Text("Exemplo Slider"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Slider(
            value: valor,
            onChanged: (double novoValor) {
              setState(() {
                valor = novoValor;
              });
            },
            min: 0,
            max: 100,
            label: "$valor",
            //divisions: 10,
            activeColor: Colors.red,
            inactiveColor: Colors.red[100],
          ),
          Text("Valor selecionado: ${valor.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
