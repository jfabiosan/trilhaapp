import 'package:flutter/material.dart';

import 'functions/gerar_numero.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Center(child: Text(numeroGerado.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numeroAleatorio();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
