void main() {
  Set<int> codDisponiveis = {1,2,3,4,5,6,7};
  List<String> tarefas = ["Estudar", "Lanchar", "Ver video no YT"];
  List<int> idsFuncionarios = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<String> produtos = [
    "maçã",
    "banana",
    "laranja",
    "maçã",
    "melão",
    "maçã",
    "maçã",
  ];
  List<String> produtosCarrinho =  ["feijão","macarrão","leite","açúcar"];
  List<String> produtosVisitados = ["arroz","feijão","macarrão","leite","açúcar","miojo","azeite"];

  exibirNaoAdicionados(produtosCarrinho, produtosVisitados);

  getTarefas(tarefas);
  retornaIdPar(idsFuncionarios);
  contRepeticoes(produtos);
  verificaPresente(codDisponiveis, 2);
}

//Crie uma função que recebe a lista de tarefas e exiba todas as tarefas
void getTarefas(List<String> tarefas) {
  print("Suas tarefas são:");
  for (String tarefa in tarefas) {
    print("- $tarefa");
  }
}

//Crie uma função que receba a lista de IDs dos funcionarios e exiba apenas os IDs pares

void retornaIdPar(List<int> ids) {
  for (int i = 0; i < ids.length; i++) {
    if (ids[i] % 2 == 0) {
      print(ids[i]);
    }
  }
}

//Crie uma fução que, dando uma lista de produtos, conte quantas vezes certo item aparece na lista de produtos
void contRepeticoes(List<String> produtos) {
  var contMacas = 0;

  for (int i = 0; i < produtos.length; i++) {
    if (produtos[i].contains("maçã")) {
      contMacas++;
    }
  }
  print("A qtd de maçãs é: $contMacas");
}

// Crie uma função que receba as listas de produtos visitados e no carroniho, exibindo os itens visitados que ainda não estão no carrinho
void exibirNaoAdicionados(List<String> produtosCarrinho,List<String> produtosVisitados) {
  print("Os produtos que não foram adicionados ao carrinho foram: ");
  for(String produto in produtosVisitados){
    if(!produtosCarrinho.contains(produto)) {
        print("- $produto");
        print("");
    }
  }
}

//crie uma função que receba um set de itens disponíveis e um código e verifique se ele está presente no set

bool verificaPresente(Set<int> codDisponiveis, int cod){

  if(!codDisponiveis.contains(cod)){
    print("Esse código não está disponível");
  }
  else{
   print("O código está disponível: ${codDisponiveis.contains(cod)}");
  }

 return codDisponiveis.contains(cod);
}
