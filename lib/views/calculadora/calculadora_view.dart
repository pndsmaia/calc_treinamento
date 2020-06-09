import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:treinamentoflutter/views/calculadora/calculadora_controller.dart';
import 'package:treinamentoflutter/widgets/button.dart';

class CalculadoraView extends StatefulWidget {
  @override
  _CalculadoraViewState createState() => _CalculadoraViewState();
}

class _CalculadoraViewState extends State<CalculadoraView> {
  final controller = CalculadoraController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "CALCULE SEU IMC",
              style: TextStyle(
                color: Colors.green,
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            _form(),
            ButtonWidget(
              buttonText: 'Calcular',
              click: () {
                if (_formKey.currentState.validate() == true) {
                  controller.calcIMC();
                }
              },
            ),
            Text(
              'O seu IMC é:',
              style: TextStyle(fontSize: 22),
            ),
            Observer(
              builder: (_) {
                return Text(
                  controller.imc,
                  style: TextStyle(fontSize: 22),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _form() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _textField(
            label: 'Digite o seu peso',
            textType: TextInputType.number,
            textController: controller.peso,
          ),
          _textField(
            label: 'Digite a sua altura',
            textType: TextInputType.number,
            textController: controller.altura,
          ),
        ],
      ),
    );
  }

  Widget _textField({
    @required String label,
    @required TextInputType textType,
    @required TextEditingController textController,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: 300.0,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.green),
          border: OutlineInputBorder(),
        ),
        keyboardType: textType,
        controller: textController,
        validator: (value) {
          if (value == "") {
            return 'Preencha o campo';
          }
          return null;
        },
      ),
    );
  }
}
