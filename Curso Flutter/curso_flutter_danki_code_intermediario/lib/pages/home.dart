import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool op1 = false;
  bool op2 = false;
  bool op3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo SwitchLitTile"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text("Salvar mensagens"),
            subtitle: const Text("Salva as mensagens no celular"),
            secondary: const Icon(Icons.favorite, color: Colors.red),
            activeColor: Colors.green,
            value: op1,
            onChanged: (bool? valor) {
              print("Selecionou: " + valor.toString());
              setState(() {
                op1 = valor!;
              });
            },
          ),
          SwitchListTile(
            title: const Text("Salvar mensagens"),
            subtitle: const Text("Salva as mensagens no celular"),
            secondary: const Icon(Icons.favorite, color: Colors.red),
            activeColor: Colors.green,
            value: op2,
            onChanged: (bool? valor) {
              print("Selecionou: " + valor.toString());
              setState(() {
                op2 = valor!;
              });
            },
          ),
          SwitchListTile(
            title: const Text("Salvar mensagens"),
            subtitle: const Text("Salva as mensagens no celular"),
            secondary: const Icon(Icons.favorite, color: Colors.red),
            activeColor: Colors.green,
            value: op3,
            onChanged: (bool? valor) {
              print("Selecionou: " + valor.toString());
              setState(() {
                op3 = valor!;
              });
            },
          ),
        ],
      ),
    );
  }
}
