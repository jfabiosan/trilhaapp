import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numberoGerado = 0;

  void _numberoAleatorio() {
    Random gerarNumero = Random();
    setState(() {
      numberoGerado = gerarNumero.nextInt(1000);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Nico",
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
      body: Center(child: Text(numberoGerado.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: _numberoAleatorio,
        child: const Icon(Icons.add),
      ),
    );
  }
}
