import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TelaChamadas extends StatefulWidget {
  const TelaChamadas({super.key});

  @override
  State<TelaChamadas> createState() => _TelaChamadasState();
}

class _TelaChamadasState extends State<TelaChamadas> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Minhas Chamadas"),
    );
  }
}
