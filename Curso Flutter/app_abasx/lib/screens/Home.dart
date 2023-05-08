import 'package:app_abasx/screens/TelaChamadas.dart';
import 'package:app_abasx/screens/TelaStatus.dart';
import 'package:flutter/material.dart';

import 'TelaConversas.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Manipulando Abas"),
          centerTitle: true,
          backgroundColor: Colors.green,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 2,
            tabs: [
              Tab(
                text: "CONVERSAS",
                icon: Icon(Icons.message),
              ),
              Tab(
                text: "STATUS",
                icon: Icon(Icons.stacked_line_chart_rounded),
              ),
              Tab(
                text: "CHAMADAS",
                icon: Icon(Icons.voice_chat),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TelaConversas(),
            TelaChamadas(),
            TelaSatus(),
          ],
        ),
      ),
    );
  }
}
