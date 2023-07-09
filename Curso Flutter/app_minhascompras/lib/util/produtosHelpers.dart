import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../model/produtos.dart';

class ProdutosHelpers {
  // Atributos
  static Database? _database;
  static ProdutosHelpers? _databaseHelper;

  ProdutosHelpers._createInstance();

  factory ProdutosHelpers() {
    if (_databaseHelper == null) {
      _databaseHelper = ProdutosHelpers._createInstance();
    }

    return _databaseHelper!;
  }

  // Definir a estrutura da tabela

  String nomeTabela = 'tb_produtos';

  String colunaId = 'id';
  String colunaNome = 'nome';
  String colunaFab = 'fabricante';
  String colunaPreco = 'preco';

  // 1 Passo - Método que cria o banco de dados
  void _criarBanco(Database db, int version) async {
    String sql = """CREATE TABLE $nomeTabela(
      $colunaId INTEGER PRIMARY KEY AUTOINCREMENT,
      $colunaNome TEXT,
      $colunaFab TEXT,
      $colunaPreco FLOAT
    )""";

    await db.execute(sql);
  }

  // 2 passo - Criar o método que inicializa o banco de dados
  Future<Database> inicializaBanco() async {
    // Pegar o caminho do Android ou IOS para salvar o banco de dados
    Directory directory = await getApplicationDocumentsDirectory();
    String caminho = '${directory.path}bdprodutos.bd';

    var bancoDeDados =
        await openDatabase(caminho, version: 1, onCreate: _criarBanco);

    return bancoDeDados;
  }

  // 3 passo - Criar método que verifica se o banco foi inicializado
  Future<Database> get database async {
    if (_database == null) {
      _database = await inicializaBanco();
    }

    return _database!;
  }

  Future<int> cadastraProduto(Produtos obj) async {
    // 1 passo - Selecionar o banco
    Database db = await this.database;
    var resposta = await db.insert(nomeTabela, obj.toMap());

    return resposta;
  }

  //Metodo lista produtos

  listarProdutos() async {
    // 1 passo - Selecionar o banco
    Database db = await this.database;

    // 2 passo - Definir o comando SQL
    String sql = 'select * from $nomeTabela';

    // 3 passo - Criar uma lista para armazenar os itens, e executa o comando
    List lista = await db.rawQuery(sql);

    // 4 passo - Retornar a lista
    return lista;
  }
}
