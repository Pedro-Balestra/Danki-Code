import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? opescolhida;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo RadioListTile"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          RadioListTile(
            title: const Text("Java"),
            subtitle: const Text("Linguagem de Oracle"),
            secondary: const Icon(Icons.javascript_sharp),
            activeColor: Colors.yellow,
            value: "Java",
            groupValue: opescolhida,
            onChanged: (String? valor) {
              setState(() {
                opescolhida = valor!;
                print(opescolhida);
              });
            },
          ),
          RadioListTile(
            title: const Text("PHP"),
            subtitle: const Text("Linguagem de Rasmus Lerdorf"),
            secondary: const Icon(Icons.php_outlined),
            activeColor: Colors.purple,
            value: "PHP",
            groupValue: opescolhida,
            onChanged: (String? valor) {
              setState(() {
                opescolhida = valor!;
                print(opescolhida);
              });
            },
          ),
          RadioListTile(
            title: const Text("Flutter"),
            subtitle: const Text("Linguagem de Google"),
            secondary: const Icon(Icons.facebook_outlined),
            activeColor: Colors.blue,
            value: "Flutter",
            groupValue: opescolhida,
            onChanged: (String? valor) {
              setState(() {
                opescolhida = valor!;
                print(opescolhida);
              });
            },
          ),
        ],
      ),
    );
  }
}
