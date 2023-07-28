import 'package:apphelpdesk/util/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
        child: Column(
          children: [
            lottieAnimation(),
            const Text("Cadastro"),
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
