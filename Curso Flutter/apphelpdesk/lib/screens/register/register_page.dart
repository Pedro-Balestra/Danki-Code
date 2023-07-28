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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("cadastre-se"),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Container(
        width: double.infinity,
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 50,
              color: AppColors.primaryOpacityColor,
              child: TextField(
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
            )
          ],
        ),
      ),
    );
  }

  Widget lottieAnimation() {
    return Container(
      margin: const EdgeInsets.only(top: 1, bottom: 10),
      child: Lottie.asset("assets/animations/animacao-user.json",
          width: 250, height: 250, fit: BoxFit.fill),
    );
  }
}