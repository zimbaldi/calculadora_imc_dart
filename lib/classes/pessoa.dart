class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa(String nome, double peso, double altura);

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(int peso) {
    _peso = 0;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(int altura) {
    _altura = 0;
  }

  double getAltura() {
    return _altura;
  }

  @override
  String toString() {
    return {"Nome": _nome, "Peso": _peso, "Altura": _altura}.toString();
  }
}
