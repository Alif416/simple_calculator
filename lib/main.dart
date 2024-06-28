// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors


import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorHome(),
    );
  }
}

class CalculatorHome extends StatefulWidget {
  @override
  _CalculatorHomeState createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  String _output = "0";
  String _input = "0";
  String _operator = "";
  int _num1 = 0;
  int _num2 = 0;

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        _output = "0";
        _input = "0";
        _operator = "";
        _num1 = 0;
        _num2 = 0;
      } else if (buttonText == "+" || buttonText == "-" || buttonText == "*" || buttonText == "/") {
        _num1 = int.parse(_input);
        _operator = buttonText;
        _input = "0";
      } else if (buttonText == ".") {
        if (!_input.contains(".")) {
          _input += buttonText;
        }
      } else if (buttonText == "=") {
        _num2 = int.parse(_input);

        switch (_operator) {
          case "+":
            _output = (_num1 + _num2).toString();
            break;
          case "-":
            _output = (_num1 - _num2).toString();
            break;
          case "*":
            _output = (_num1 * _num2).toString();
            break;
          case "/":
            _output = (_num1 / _num2).toString();
            break;
        }

        _num1 = 0;
        _num2 = 0;
        _operator = "";
        _input = _output;
      } else {
        _input += buttonText;
      }

      _output = double.parse(_input).toStringAsFixed(2);
    });
  }



Widget _buildButton(String buttonText) {
  return Expanded(
    child: OutlinedButton(
      style: ButtonStyle(
        padding: WidgetStateProperty.all(EdgeInsets.all(24.0)),
      ),
      onPressed: () => _buttonPressed(buttonText),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
            child: Text(
              _output,
              style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Divider()),
          Column(children: [
            Row(children: [
              _buildButton("7"),
              _buildButton("8"),
              _buildButton("9"),
              _buildButton("/")
            ]),
            Row(children: [
              _buildButton("4"),
              _buildButton("5"),
              _buildButton("6"),
              _buildButton("*")
            ]),
            Row(children: [
              _buildButton("1"),
              _buildButton("2"),
              _buildButton("3"),
              _buildButton("-")
            ]),
            Row(children: [
              _buildButton("."),
              _buildButton("0"),
              _buildButton("00"),
              _buildButton("+")
            ]),
            Row(children: [
              _buildButton("C"),
              _buildButton("="),
            ]),
          ]),
        ],
      ),
    );
  }
}


