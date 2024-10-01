import 'package:flutter/material.dart';

class SelfService extends StatefulWidget {
  const SelfService({super.key});

  @override
  State<SelfService> createState() => _SelfServiceState();
}

class _SelfServiceState extends State<SelfService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
