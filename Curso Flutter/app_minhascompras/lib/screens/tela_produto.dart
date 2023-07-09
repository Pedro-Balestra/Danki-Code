import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../util/produtosHelpers.dart';

class TelaProdutos extends StatefulWidget {
  const TelaProdutos({super.key});

  @override
  State<TelaProdutos> createState() => _TelaProdutosState();
}

class _TelaProdutosState extends State<TelaProdutos> {
  ProdutosHelpers db = ProdutosHelpers();

  void recuperarProdutos() async {
    List produtosRecuperados = await db.listarProdutos();
    print("Produtos cadastrados: " + produtosRecuperados.toString());
  }

  @override
  Widget build(BuildContext context) {
    recuperarProdutos();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Produtos'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
