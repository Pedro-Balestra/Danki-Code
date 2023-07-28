import 'package:apphelpdesk/util/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //Controllers dos TextField
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  String msgErro = "";

  void validaCampos() {
    //1 Passo - Recuperar os dados
    String nome = nomeController.text;
    String email = emailController.text;
    String senha = senhaController.text;
    //2 Passo - Validar os dados
    if (nome.isNotEmpty) {
      if (email.isNotEmpty && email.contains("@")) {
        if (senha.isNotEmpty && senha.length < 6) {
          msgErro = "Preencha a senha com mais de 6 caracteres!";
        } else {
          //Cadastre no banco de dados
          cadastrarUsuario();
        }
      }
    } else {
      msgErro = "Preencha o campo nome!";
    }
  }

  //Metodo que cadastra no Firebase o usuário
  void cadastrarUsuario() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crie sua conta"),
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              lottieAnimation(),
              Text(
                "Cadastro",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 40,
                    color: AppColors.textColorBlue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                "Crie sua conta agora mesmo!",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 22,
                    color: AppColors.textColorBlue,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 50,
                color: AppColors.primaryOpacityColor,
                child: TextField(
                  controller: nomeController,
                  decoration: InputDecoration(
                    hintText: "Nome",
                    hintStyle: TextStyle(color: AppColors.primaryColor),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(15),
                    prefixIcon: Icon(
                      Icons.person,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 50,
                color: AppColors.primaryOpacityColor,
                child: TextField(
                  controller: senhaController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: AppColors.primaryColor),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(15),
                    prefixIcon: Icon(
                      Icons.email,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 50,
                color: AppColors.primaryOpacityColor,
                child: TextField(
                  controller: senhaController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Senha",
                    hintStyle: TextStyle(color: AppColors.primaryColor),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(15),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                  ),
                  child: const Text(
                    "Cadastrar",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonRed,
                  ),
                  child: const Text(
                    "Voltar",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget lottieAnimation() {
    return Container(
      margin: const EdgeInsets.only(top: 1, bottom: 5),
      child: Lottie.asset("assets/animations/animacao-user.json",
          width: 250, height: 250, fit: BoxFit.fill),
    );
  }
}
