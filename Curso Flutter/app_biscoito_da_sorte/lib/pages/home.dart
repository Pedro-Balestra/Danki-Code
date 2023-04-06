import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Criando o Array com as Frases
  var listaFrases = [
    "A vida trará coisas boas se tiver paciência.",
    "Demonstre amor e alegria em todas as oportunidades e verá que a paz nasce dentro de si.",
    "Não compense na ira o que lhe falta na razão.",
    "Defeitos e virtudes são apenas dois lados da mesma moeda.",
    "A maior de todas as torres começa no solo.",
    "Não há que ser forte. Há que ser flexível.",
    "Todos os dias organiza os seus cabelos, por que não faz o mesmo com o coração?",
    "Há três coisas que jamais voltam; a flecha lançada, a palavra dita e a oportunidade perdida.",
    "A juventude não é uma época da vida, é um estado de espírito.",
    "Podemos escolher o que semear, mas somos obrigados a colher o que plantamos.",
    "Dê toda a atenção á formação dos seus filhos, sobretudo com bons exemplos da sua própria vida.",
    "Siga os bons e aprenda com eles.",
    "Não importa o tamanho da montanha, ela não pode tapar o sol.",
    "O bom-senso vale mais do que muito conhecimento.",
    "Quem quer colher rosas tem de estar preparado para suportar os espinhos.",
  ];

  //Variavel que vai armazenar o caminho da Imagem do Biscoito
  var imgBiscoito = "images/biscoito_inteiro.jpg";

  //Variavel que guarda a frase da sorte
  var fraseDaSorte = "Clique no botão para gerar frase";

  //Método que quebra o biscoito

  void quebrarBiscoito() {
    var numero = Random().nextInt(listaFrases.length);

    setState(() {
      //Gerando a Frase da sorte
      fraseDaSorte = listaFrases[numero];

      //troca a imagem do biscoito
      imgBiscoito = "images/biscoito_quebrado.jpg";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Biscoito da sorte"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(imgBiscoito),
                radius: 80,
                backgroundColor: Colors.white,
              ),
              Text(
                fraseDaSorte,
                textAlign: TextAlign.center,
                style: GoogleFonts.pacifico(
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                onPressed: quebrarBiscoito,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white),
                child: const Text(
                  "Quebrar Biscoito!",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
