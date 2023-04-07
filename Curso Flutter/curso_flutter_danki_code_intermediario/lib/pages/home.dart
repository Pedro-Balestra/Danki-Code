import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
              decoration: const InputDecoration(labelText: "Digite seu nome"),
              style: const TextStyle(
                fontSize: 18,
                color: Colors.green,
              ),
              maxLength: 10,
              obscureText: false,
              obscuringCharacter: "*",
              keyboardType: TextInputType.multiline,
              onSubmitted: (valor) {
                print("Digitou $valor");
              },
            ),
          ],
        ),
      ),
    );
  }
}
