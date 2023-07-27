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

  // DocumentReference ref = await db.collection("produtos").add({
  //   "nome": "Notebook da Dell",
  //   "preco": "4000",
  //   "ativo": "false",
  // });

  // print("Id do ultimo registro: " + ref.id);

  //Como excluir um registro no banco de dados
  // db.collection("produtos").doc("002").delete();

  //Como listar dados do firebase
  //1° Forma - Lista somente um documento
  DocumentSnapshot snapshot = await db.collection("produtos").doc("001").get();
  Map<String, dynamic> dados = snapshot.data() as Map<String, dynamic>;
  print("Nome do produto: " + dados["nome"]);
  print("Valor do produto: " + dados["preco"]);

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
