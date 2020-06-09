import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'calculadora_controller.g.dart';

class CalculadoraController = _CalculadoraControllerBase
    with _$CalculadoraController;

abstract class _CalculadoraControllerBase with Store {
  final TextEditingController peso = TextEditingController();
  final TextEditingController altura = TextEditingController();

  @observable
  String imc = '';

  @action
  calcIMC() {
    imc = (double.parse(peso.text) /
            (double.parse(altura.text) * double.parse(altura.text)))
        .toStringAsFixed(2);
  }
}
