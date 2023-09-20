void main(){

  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 25;
  bool isMadura;

  Fruta fruta1 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);

  print(fruta1.nome);
  fruta1.estaMadura(30);
}

class Fruta {
  String nome, cor, sabor;
  double peso;
  int diasDesDeColheita;
  bool ? isMadura;

 //criação do construtor
  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesDeColheita, {this.isMadura});

  estaMadura(int diasParaMadura){
    isMadura = diasDesDeColheita >= diasParaMadura;
    print('A sua $nome foi colhida há $diasDesDeColheita e precisa de $diasParaMadura para poder comer. Ela está madura? $isMadura');
  }
}