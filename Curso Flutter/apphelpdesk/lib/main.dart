import 'package:apphelpdesk/screens/register/register_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  //Função para inicializar o firebase (segundo a documentação)
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  //Para testarmos vamos iniserir um usuario
  FirebaseFirestore db = FirebaseFirestore.instance;
  db.collection("usuarios").doc("002").set({"nome": "Jão da esquina"});
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo HelpDesk',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RegisterPage(),
    );
  }
}
