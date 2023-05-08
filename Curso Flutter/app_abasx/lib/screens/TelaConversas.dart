import 'package:flutter/material.dart';

class TelaConversas extends StatefulWidget {
  const TelaConversas({super.key});

  @override
  State<TelaConversas> createState() => _TelaConversasState();
}

class _TelaConversasState extends State<TelaConversas> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Minhas Conversas"),
    );
  }
}
