import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ExerciceStateful(),
  ));
}

class ExerciceStateful extends StatefulWidget {
  const ExerciceStateful({super.key});
  @override
  State<ExerciceStateful> createState() => _ExerciceStateful();
}

class _ExerciceStateful extends State<ExerciceStateful> {
  int _name = 0;
  TextEditingController _controller = new TextEditingController();
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercicio 2"),
        ),
        body: ListView(children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite o 1 número:",
              ),
              style: TextStyle(fontSize: 22),
              controller: _controller,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite o 2 número:",
              ),
              style: TextStyle(fontSize: 22),
              controller: _controller1,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite o 3 número:",
              ),
              style: TextStyle(fontSize: 22),
              controller: _controller2,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(32),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _name = int.parse(_controller.text) +
                        int.parse(_controller1.text) +
                        int.parse(_controller2.text);
                  });
                },
                child: Text("Salvar")),
          ),
          Padding(
            padding: EdgeInsets.all(32),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _name = 0;
                    _controller.text = "";
                    _controller1.text = "";
                    _controller2.text = "";
                  });
                },
                child: Text("Limpar")),
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                "A soma dos valores é: $_name",
                style: TextStyle(fontSize: 22),
              )),
        ]));
  }
}
