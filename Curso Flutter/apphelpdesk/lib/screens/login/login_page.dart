import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../util/appcolors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Controllers dos TextField
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              lottieAnimation(),
              Text(
                "HelpDesk!",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 40,
                    color: AppColors.textColorBlue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                "O seu aplicativo de heldesk!",
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
                  controller: emailController,
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
                  controller: emailController,
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
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.group_add, color: AppColors.primaryColor),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Criar uma conta",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 14, color: AppColors.textColorBlue),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.lock, color: AppColors.primaryColor),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Recuper sua conta",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 14, color: AppColors.textColorBlue),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
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
                    "Acessar",
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
      margin: const EdgeInsets.only(
        top: 100,
        bottom: 5,
      ),
      child: Lottie.asset("assets/animations/animacao-helpdesk.json",
          width: 250, height: 250, fit: BoxFit.fill),
    );
  }
}
