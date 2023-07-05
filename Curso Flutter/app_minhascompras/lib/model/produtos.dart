class Produtos {
  //Atributos
  late int id;
  late String nome;
  late String fornecedor;
  late double preco;

  //Construtor
  Produtos(this.id, this.nome, this.fornecedor, this.preco);

  //Métodos

  //Fluxo de Ida
  //Método que CONVERTE UM MODEL PARA MAP
  Map<String, dynamic> toMap() {
    //1 passo - criar o map que vai ser retornado
    var dados = Map<String, dynamic>();

    //2 passo - guardar os dados dos atributos no map
    dados['id'] = id;
    dados['nome'] = nome;
    dados['fornecedor'] = fornecedor;
    dados['preco'] = preco;
    return dados;
  }

  //Fluxo de volta
  //Método que CONVERTE UM MAP PARA MODEL
  Produtos.deMapParaModel(Map<String, dynamic> dados) {
    this.id = dados['id'];
    this.nome = dados['nome'];
    this.fornecedor = dados['fornecedor'];
    this.preco = dados['preco'];
  }
}