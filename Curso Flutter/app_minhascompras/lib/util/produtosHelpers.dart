import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class ProdutosHelpers {
  //Atributos
  late Database _database;

  //Definir a estrutura da tabela

  String nomeTabela = 'tb_produtos';

  String colunaId = 'id';
  String colunaNome = 'nome';
  String colunaFab = 'fabricante';
  String colunaPreco = 'preco';

  //1 Passo - Metodo que cria o banco de dados
  void _criarBanco(Database db, int version) async {
    String sql = """CREATE TABLE $nomeTabela(
      $colunaId INTEGER PRIMARY KEY AUTOINCREMENT,
      $colunaNome TEXT,
      $colunaFab TEXT,
      $colunaPreco FLOAT
    )""";

    await db.execute(sql);
  }

  //2 passo - Criar o metodo que inicializa o banco de dados
  Future<Database> inicializaBanco() async {
    //Pegar o caminho do Android ou IOS para salvar o banco de dados
    Directory directory = await getApplicationDocumentsDirectory();
    String caminho = '${directory.path}bdprodutos.bd';

    var bancoDeDados =
        await openDatabase(caminho, version: 1, onCreate: _criarBanco);

    return bancoDeDados;
  }

  //3 passo - Criar metodo que verifica se o banco foi Inicializado
  Future<Database> get database async {
    if (_database == null) {
      _database = await inicializaBanco();
    }

    return _database;
  }
}
