// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculadora_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalculadoraController on _CalculadoraControllerBase, Store {
  final _$imcAtom = Atom(name: '_CalculadoraControllerBase.imc');

  @override
  String get imc {
    _$imcAtom.reportRead();
    return super.imc;
  }

  @override
  set imc(String value) {
    _$imcAtom.reportWrite(value, super.imc, () {
      super.imc = value;
    });
  }

  final _$_CalculadoraControllerBaseActionController =
      ActionController(name: '_CalculadoraControllerBase');

  @override
  dynamic calcIMC() {
    final _$actionInfo = _$_CalculadoraControllerBaseActionController
        .startAction(name: '_CalculadoraControllerBase.calcIMC');
    try {
      return super.calcIMC();
    } finally {
      _$_CalculadoraControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imc: ${imc}
    ''';
  }
}
