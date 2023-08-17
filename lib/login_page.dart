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
              Container(
                width: 150,
                height: 100,
                color: Colors.amber,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text("Informe seu CPF"),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text("Informe a senha"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
