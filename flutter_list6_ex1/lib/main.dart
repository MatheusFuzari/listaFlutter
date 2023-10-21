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
  String _name = " ";
  TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercicio 1"),
        ),
        body: ListView(children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Digite seu nome:",
              ),
              style: TextStyle(fontSize: 22),
              controller: _controller,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(32),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _name = _controller.text;
                  });
                },
                child: Text("Salvar")),
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                "O nome é: $_name",
                style: TextStyle(fontSize: 22),
              )),
        ]));
  }
}
