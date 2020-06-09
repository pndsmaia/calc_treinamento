import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  
  final String buttonText;
  final Function click;

  ButtonWidget({@required this.buttonText, @required this.click});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 50.0,
      width: 200.0,
      child: RaisedButton(
        onPressed: click,
        color: Colors.greenAccent,
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
