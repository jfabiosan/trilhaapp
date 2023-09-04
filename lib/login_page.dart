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
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        //Fazendo tratamento do Teclado virtual para nao apresentar erro
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 8,
                      child: Image.network(
                          "https://hermes.digitalinnovation.one/assets/diome/logo.png"),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Já tem cadastro?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Faça seu login e make the change_",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                    width: double.infinity,
                    height: 30,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.white,
                          )),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    width: double.infinity,
                    height: 30,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "Senha",
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.white,
                          )),
                    )),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  //tamanho do botao na horizontal para ocupar todo espaco na tela
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      //propriedade do estilo do botao
                      style: ButtonStyle(
                        //cantos arredondados
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        //cor do botao
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 161, 16, 167)),
                      ),
                      child: const Text(
                        "ENTRAR",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: const Text("Esqueci minha senha",
                      style: TextStyle(
                          color: Color.fromARGB(255, 148, 134, 9),
                          fontWeight: FontWeight.w700)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: const Text(
                    "criar conta",
                    style: TextStyle(color: Color.fromARGB(255, 11, 129, 15)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
