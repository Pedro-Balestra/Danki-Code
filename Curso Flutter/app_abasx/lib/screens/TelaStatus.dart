import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TelaSatus extends StatefulWidget {
  const TelaSatus({super.key});

  @override
  State<TelaSatus> createState() => _TelaSatusState();
}

class _TelaSatusState extends State<TelaSatus> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Status"),
    );
  }
}
