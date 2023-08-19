import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.person,
                size: 150,
                color: Colors.deepOrange,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                //color: Colors.blue,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe seu CPF:")),
                    Expanded(flex: 3, child: Text("CPF")),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                //color: Colors.blue,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe a senha:")),
                    Expanded(flex: 3, child: Text("senha")),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                width: double.infinity,
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text("Confirmar"),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                child: const Text("Cadastre-se"),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
