import 'package:app_minhascompras/model/produtos.dart';
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
  //1 passo - Criar a lista de objetos do tipo Produto
  List<Produtos> listaDeProdutos = <Produtos>[];

  ProdutosHelpers db = ProdutosHelpers();

  void recuperarProdutos() async {
    List produtosRecuperados = await db.listarProdutos();
    //2 passo - Converter os itens da lista produtosRecuperados, para a lista de objetos do tipo Produto
    List<Produtos> listaTemporaria = <Produtos>[];
    print("Produtos Cadastrados: " + produtosRecuperados.toString());

    for (var item in produtosRecuperados) {
      Produtos obj = Produtos.deMapParaModel(item);
      listaTemporaria.add(obj);
    }

    setState(() {
      listaDeProdutos = listaTemporaria;
    });
  }

  @override
  void initState() {
    super.initState();
    recuperarProdutos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Produtos'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: listaDeProdutos.length,
              itemBuilder: (context, index) {
                final Produtos p = listaDeProdutos[index];
                return Card(
                  child: ListTile(
                    title: Text(
                      p.nome,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "R\$ ${p.preco}",
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(right: 16.0),
                            child: Icon(
                              Icons.delete,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.edit,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
