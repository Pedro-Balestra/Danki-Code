import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool cksalada = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo CheckBox"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(80),
        child: Column(
          children: [
            const Text("Lache X Salada"),
            Checkbox(
              value: cksalada,
              onChanged: (bool? valor) {
                setState(() {
                  cksalada = valor ?? false;
                });
              },
              activeColor: Colors.red,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (cksalada) {
                  print("O check box foi selecionado");
                } else {
                  print("Check box desmarcado");
                }
              },
              child: const Text("Exibir"),
            ),
          ],
        ),
      ),
    );
  }
}
