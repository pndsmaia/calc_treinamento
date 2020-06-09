import 'package:flutter/material.dart';

class ResultadoScreen extends StatelessWidget {
  final String imc;

  ResultadoScreen({@required this.imc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 2'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}
