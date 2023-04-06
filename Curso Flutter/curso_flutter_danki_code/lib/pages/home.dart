import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var total = "?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo Statefull"),
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
                  setState(() {
                    total = "50";
                  });
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
