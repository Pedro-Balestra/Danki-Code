import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Criando os Controllers
  TextEditingController txtcelxius = TextEditingController();
  TextEditingController txtfa = TextEditingController();

  void calcularTemperatura() {
    setState(() {
      double c, f;

      //recber os dados de Celsius
      c = double.parse(txtcelxius.text);

      //Calculo
      f = (c * 9 / 5) + 32;

      txtfa.text = f.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003366),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 80, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Conversor de temperatura",
                  style: TextStyle(
                    color: Color(0xFFFFc801),
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const Text(
                  "Converta de Celsius e Fahrenheit",
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: txtcelxius,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Entre com um temperatura em Celsius",
                  ),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: txtfa,
                  readOnly: true,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Temperatura em Fahrenheit ",
                  ),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      calcularTemperatura();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF005CB9),
                        foregroundColor: Colors.white),
                    child: const Text("Converter"),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      txtcelxius.clear();
                      txtfa.clear();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("Limpar"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
