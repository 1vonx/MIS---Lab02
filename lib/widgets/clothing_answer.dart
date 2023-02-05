import 'package:flutter/material.dart';

class PizzaAnswer extends StatelessWidget {
  final String _answerText;
  final VoidCallback _tapped;
  const PizzaAnswer(
    this._tapped,
    this._answerText,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          padding: const EdgeInsets.all(5)
      ),
      onPressed: _tapped,
      child: Text(
        _answerText,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.red,
        ),
      ),
    );
  }
}
