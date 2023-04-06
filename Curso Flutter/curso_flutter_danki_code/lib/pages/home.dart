import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //declarando uma variavel
    var total = " ?";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo Stateless"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Qual é o valor da soma abaixo?",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              Text("30 + 20 = $total", style: const TextStyle(fontSize: 30)),
              ElevatedButton(
                onPressed: () {
                  print("Clicou no botão");
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue),
                child: const Text("Calcular"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
