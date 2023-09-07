import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Main Page"),
        ),
        drawer: Drawer(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: const Text("Dados Cadastrais"),
                onTap: () {},
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: const Text("Configuracões"),
                onTap: () {},
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: const Text("Termos de uso"),
                onTap: () {},
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
