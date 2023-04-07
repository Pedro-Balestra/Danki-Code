import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtnome = TextEditingController();

  TextEditingController txtidade = TextEditingController();

  var nome;
  var idade;

  void exibeTexto() {
    setState(() {
      nome = txtnome.text;
      idade = int.parse(txtidade.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo TextField"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(80),
        child: Column(
          children: [
            TextField(
              controller: txtnome,
              decoration: const InputDecoration(labelText: "Digite seu nome"),
              style: const TextStyle(
                fontSize: 18,
                color: Colors.green,
              ),
              maxLength: 10,
              obscureText: false,
              obscuringCharacter: "*",
              keyboardType: TextInputType.text,
            ),
            TextField(
              controller: txtidade,
              decoration: const InputDecoration(labelText: "Digite sua idade"),
              style: const TextStyle(
                fontSize: 18,
                color: Colors.green,
              ),
              maxLength: 10,
              obscureText: false,
              obscuringCharacter: "*",
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                exibeTexto();
              },
              child: const Text("Exibir"),
            ),
            Text("O seu nome é: $nome"),
            Text("A sua idade é: $idade"),
          ],
        ),
      ),
    );
  }
}
