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

Color getLogin(user, password) {
  print("$user e $password");
  if (user == "Senai" && password == "mobile23") {
    return Colors.green;
  } else {
    return Colors.red;
  }
}

Text loginText(user, password) {
  print("$user e $password");
  if (user == "Senai" && password == "mobile23") {
    return Text("Logado!!!", style: TextStyle(fontSize: 22));
  } else {
    return Text("Usuário inválido!", style: TextStyle(fontSize: 22));
  }
}

class _ExerciceStateful extends State<ExerciceStateful> {
  String _user = "";
  String _passowrd = "";
  TextEditingController _controllerUser = new TextEditingController();
  TextEditingController _controllerPassword = new TextEditingController();
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
              controller: _controllerUser,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Digite sua senha:",
              ),
              style: TextStyle(fontSize: 22),
              controller: _controllerPassword,
              obscureText: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(32),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _user = _controllerUser.text;
                    _passowrd = _controllerPassword.text;
                  });
                },
                child: Text("Login")),
          ),
          Container(
            alignment: Alignment.center,
            height: 80,
            color: getLogin(_user, _passowrd),
            child: loginText(_user, _passowrd),
          ),
        ]));
  }
}
