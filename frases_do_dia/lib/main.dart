import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "A gratidão é a memória do coração.",
    "Não importa o que você decidiu. O que importa é que isso te faça feliz.",
    "Deixe pra trás o que não te leva pra frente.",
    "Viver não é esperar a tempestade passar, é aprender a dançar na chuva.",
    "O segredo é ter fé em Deus."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma grase";

  void _gerarFrases() {
    var numeroFrase = Random().nextInt(_frases.length);
    
    setState(() {
      _fraseGerada = _frases[numeroFrase];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frase do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          //width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/logo.png"),
                 Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                ElevatedButton(
                  onPressed: _gerarFrases,
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child:  Text("Nova Frase",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                )
              ]),
        ),
      ),
    );
  }
}
