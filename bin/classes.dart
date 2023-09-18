void main(){

  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 25;
  bool isMadura;

  Fruta fruta1 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);

  print(fruta1.nome);
}

class Fruta {
  String nome, cor, sabor;
  double peso;
  int diasDesDeColheita;
  bool ? isMadura;

 //criação do construtor
  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesDeColheita, {this.isMadura});
}