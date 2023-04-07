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
        title: const Text("Exemplo RadioButton"),
        backgroundColor: Colors.green,
      ),
      body: Row(
        children: [
          Radio(
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
          const Text("Java"),
          Radio(
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
          const Text("PHP"),
          Radio(
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
          const Text("Flutter")
        ],
      ),
    );
  }
}
