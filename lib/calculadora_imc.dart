import 'dart:convert';
import 'dart:io';
import 'package:calculadora_imc/classes/pessoa.dart';

void execute() {
  print("Bem vindo a calculadora de IMC!");

  print("Por favor, digite o seu nome: ");
  var line = stdin.readLineSync(encoding: utf8);
  var nome = line ?? "";

  try {
    line ?? "";
    if (nome.trim() == "") {
      print("Nome inválido! O programa será encerrado");
      exit(0);
    }
  } catch (e) {
    print("nome");
  }

  print("Agora, digite seu peso: ");
  line = stdin.readLineSync(encoding: utf8);
  var peso = double.parse(line ?? "0");

  try {
    if (peso <= 0) {
      print(
          "Invalido, sua altura deve ser maior do que 0. O programa será encerrado");
      exit(0);
    }
  } catch (e) {
    print("peso");
  }

  print("Por último, digite sua altura");
  line = stdin.readLineSync(encoding: utf8);
  var altura = double.parse(line ?? "0");

  try {
    if (altura <= 0) {
      print(
          "Invalido, sua altura deve ser maior do que 0. O programa será encerrado");
      exit(0);
    }
  } catch (e) {
    print("altura");
  }

  var pessoa = Pessoa(nome, peso, altura);
  String classificacaoImc = "";

  double imc = 0;

  imc = peso / (altura * altura);

  if (imc < 18.5) {
    classificacaoImc = "Magreza";
  } else if (imc >= 18.5 && imc <= 24.9) {
    classificacaoImc = "Normal";
  } else if (imc >= 25 && imc <= 29.9) {
    classificacaoImc = "Sobrepeso";
  } else if (imc >= 30 && imc <= 39.9) {
    classificacaoImc = "Obesidade";
  } else {
    classificacaoImc = "Obesidade grave";
  }

  print("O IMC de $nome é: $imc. Sua classificação é $classificacaoImc.");

  //Criar condiçoes de faixas de peso: normal, magro, obeso...
}
