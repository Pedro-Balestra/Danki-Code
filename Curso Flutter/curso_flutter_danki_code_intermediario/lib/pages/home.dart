import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool opescolhida = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo Switch"),
        backgroundColor: Colors.green,
      ),
      body: Row(
        children: [
          const Text("Salvar imagens"),
          Switch(
            activeColor: Colors.green,
            value: opescolhida,
            onChanged: (bool? valor) {
              print("Selecionou: " + valor.toString());
              setState(() {
                opescolhida = valor!;
              });
            },
          ),
        ],
      ),
    );
  }
}
