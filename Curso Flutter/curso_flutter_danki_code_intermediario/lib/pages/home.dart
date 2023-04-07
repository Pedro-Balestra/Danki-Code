import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool cksalada = false;
  bool ckbacon = false;
  bool cktudo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo CheckBox"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        //  padding: const EdgeInsets.all(80),
        child: Column(
          children: [
            CheckboxListTile(
              title: const Text("X Salada"),
              subtitle: const Text("O lanche mais completo de salada"),
              secondary: const Icon(Icons.food_bank_rounded),
              value: cksalada,
              onChanged: (bool? valor) {
                setState(() {
                  cksalada = valor ?? false;
                });
              },
              activeColor: Colors.red,
            ),
            CheckboxListTile(
              title: const Text("X Bacon"),
              subtitle: const Text("O lanche mais completo de bacon"),
              secondary: const Icon(Icons.food_bank_rounded),
              value: ckbacon,
              onChanged: (bool? valor) {
                setState(() {
                  ckbacon = valor ?? false;
                });
              },
              activeColor: Colors.red,
            ),
            CheckboxListTile(
              title: const Text("X Tudo"),
              subtitle: const Text("O lanche mais completo"),
              secondary: const Icon(Icons.food_bank_rounded),
              value: cktudo,
              onChanged: (bool? valor) {
                setState(() {
                  cktudo = valor ?? false;
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
