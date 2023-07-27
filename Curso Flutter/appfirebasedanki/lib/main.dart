import 'package:appfirebasedanki/screens/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  //Inicializar o firebase
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  FirebaseFirestore db = FirebaseFirestore.instance;

  // db.collection("produtos").doc("002").set({
  //   "nome": "Bolacha Trakinas de morango",
  //   "preco": "1.90",
  //   "ativo": "true",
  // });

  //Como excluir um registro no banco de dados
  db.collection("produtos").doc("002").delete();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
