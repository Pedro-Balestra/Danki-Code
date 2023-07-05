import 'package:sqflite/sqflite.dart';

class ProdutosHelpers {
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
      $colunaPreco float
    )""";

    await db.execute(sql);
  }
}
