import 'package:app_minhascompras/model/produtos.dart';
import 'package:app_minhascompras/screens/home.dart';
import 'package:app_minhascompras/util/produtosHelpers.dart';
import 'package:flutter/material.dart';

import '../util/produtosHelpers.dart';

class TelaCadastro extends StatefulWidget {
  TelaCadastro({super.key, this.produto});

  Produtos? produto;

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  TextEditingController txtnome = TextEditingController();
  TextEditingController txtfabricante = TextEditingController();
  TextEditingController txtpreco = TextEditingController();

  ProdutosHelpers db = ProdutosHelpers();

  String textoBotao = "Adicionar Produto";
  String tittleAppBar = "Cadastro de Produto";
  late int idProduto;

  void salvarProduto({Produtos? p}) async {
    //Cadastrando novo produto
    int resultado;
    if (p == null) {
      //1 passo - Criar objeto Model para pegar os dados da tela
      Produtos obj = Produtos(
        null,
        txtnome.text,
        txtfabricante.text,
        double.parse(txtpreco.text),
      );
      resultado = await db.cadastraProduto(obj);

      print("Cadastrado com sucesso! " + resultado.toString());
    }
    //Estar alterando um produto
    else {
      //1 passo - pegar os dados e monta o objeto para alterar
      p.nome = txtnome.text;
      p.fabricante = txtfabricante.text;
      p.preco = double.parse(txtpreco.text);
      p.id = idProduto;

      resultado = await db.alterarProduto(p);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Home(),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.produto != null) {
      txtnome.text = widget.produto!.nome;
      txtfabricante.text = widget.produto!.fabricante;
      txtpreco.text = widget.produto!.preco.toString();

      idProduto = widget.produto!.id!;

      textoBotao = "Editar Produto";
      tittleAppBar = "Editar Produto";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tittleAppBar),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: null,
            child: Column(
              children: [
                TextFormField(
                  controller: txtnome,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(labelText: "Alimento"),
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: txtfabricante,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(labelText: "Fabricante"),
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: txtpreco,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(labelText: "Preço"),
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      salvarProduto(p: widget.produto);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                    ),
                    child: Text(textoBotao),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
