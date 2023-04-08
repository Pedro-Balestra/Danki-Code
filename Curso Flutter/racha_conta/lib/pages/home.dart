import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Variaveis
  double taxa = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Racha Conta"),
        centerTitle: true,
        backgroundColor: const Color(0xffff6600),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 130, right: 130),
                child: Image.asset("assets/icon_money.png"),
              ),
              const TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Total da conta",
                ),
                style: TextStyle(fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Taxa de Serviços %: ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Slider(
                    value: taxa,
                    min: 0,
                    max: 10,
                    label: "Taxa $taxa %",
                    divisions: 10,
                    activeColor: const Color(0xffff6600),
                    inactiveColor: Colors.orange[100],
                    onChanged: (double valor) {
                      setState(() {
                        taxa = valor;
                      });
                    },
                  ),
                ],
              ),
              const TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Quantidade de Pessoas",
                ),
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffff6600),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    "Calcular",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
