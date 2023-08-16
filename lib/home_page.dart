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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.amberAccent,
                child: Text(
                  'Ações do usuário',
                  style: GoogleFonts.acme(fontSize: 15),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: 50,
                width: 250,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.orange,
                  child: Text(
                    'Gerando $quantidadeCliques vezes',
                    style: GoogleFonts.adamina(fontSize: 15),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.lightGreen,
              child: Text(
                'Numero da sorte: $numeroGerado',
                style: GoogleFonts.aboreto(fontSize: 20),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.yellow,
                        child: Text(
                          'Nome:',
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.red,
                        child: Text(
                          'Fabio Ventura',
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.green,
                        child: Text(
                          'R',
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
