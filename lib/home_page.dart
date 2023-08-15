import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Nico",
              textAlign: TextAlign.right,
              style: GoogleFonts.aladin(fontSize: 30),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              'Gerando $quantidadeCliques vezes',
              style: GoogleFonts.aboreto(fontSize: 15),
            )),
            Center(
              child: Text(
                'Numero da sorte: $numeroGerado',
                style: GoogleFonts.aboreto(fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Start',
                  style: GoogleFonts.aboreto(fontSize: 20),
                ),
                Text(
                  'center',
                  style: GoogleFonts.aboreto(fontSize: 20),
                ),
                Text(
                  'end',
                  style: GoogleFonts.aboreto(fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
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
