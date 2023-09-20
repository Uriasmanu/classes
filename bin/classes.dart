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

class Heroine {
  String nome;
  int pontosVida;
  int pontosMagia;
  double velocidade;
  int danoAtaque; // Alterado o tipo para 'int'
  bool? isViva;
  int nivel;

  Heroine(this.nome, this.pontosVida, this.pontosMagia, this.velocidade, this.nivel, {this.isViva = true})
      : danoAtaque = (10 + (nivel * 5)).toInt(); // Converte o resultado para 'int'

  void atacar(Heroine inimigo) {
    // Implementação do método de ataque
    // Calcula o dano com base no dano de ataque atual
    int dano = danoAtaque;
    print('$nome atacou ${inimigo.nome} causando $dano de dano!');
    inimigo.receberDano(dano);
  }

  void receberDano(int dano) {
    // Implementação para receber dano e atualizar os pontos de vida
    pontosVida -= dano;
    if (pontosVida <= 0) {
      isViva = false;
      print('$nome foi derrotado!');
    }
  }

  void andar() {
    // Implementação do método de andar
    // Por exemplo, você pode atualizar a posição da heroína aqui
    print('$nome está andando.');
  }

  void usarMagia() {
    // Implementação do método de usar magia
    // Por exemplo, você pode consumir pontos de magia e aplicar um efeito mágico aqui
    int custoMagia = 20 + (nivel * 10); // Aumenta o custo de magia com base no nível
    if (pontosMagia >= custoMagia) {
      print('$nome usou uma magia poderosa!');
      pontosMagia -= custoMagia;
    } else {
      print('$nome não possui energia suficiente para usar magia.');
    }
  }
}