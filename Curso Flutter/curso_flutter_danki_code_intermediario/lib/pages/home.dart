import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var listaProdutos = [
    {"name": "X Salada", "preco": 14.00, "foto": "images/xsalada.jpg"},
    {"name": "X Bacon", "preco": 13.00, "foto": "images/xbacon.jpg"},
    {"name": "X Tudo", "preco": 54.00, "foto": "images/xtudo.jpg"},
    {"name": "Mortadela", "preco": 54.00, "foto": "images/mortadela.jpg"},
    {"name": "Misto Quente", "preco": 4.00, "foto": "images/mistoquente.jpg"},
  ];

//Exibir uma caixa de Dialogo
  void exibirAlerta(String nome, String preco) {
    showDialog(
      context: context,
      builder: (
        context,
      ) {
        return AlertDialog(
          title: const Text("Produto Selecionado"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Produto: $nome"),
              Text("Produto: $preco"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                print("Clicou no Salvar");
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.indigo,
              ),
              child: const Text(
                "Salvar",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                print("Clicou no Cancelar");
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text(
                "Cancelar",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manipulando caixas de diálogo"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView.builder(
        itemCount: listaProdutos.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    exibirAlerta(listaProdutos[index]["name"].toString(),
                        listaProdutos[index]["preco"].toString());
                  },
                  child: Image.asset(
                    listaProdutos[index]["foto"].toString(),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  listaProdutos[index]["name"].toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
