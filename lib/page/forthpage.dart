import 'package:flutter/material.dart';

class ForthPage extends StatefulWidget {
  const ForthPage({super.key});

  @override
  State<ForthPage> createState() => _ForthPageState();
}

class _ForthPageState extends State<ForthPage> {
  final bool backKey = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white54,
        backgroundColor: const Color(0xFF176049),
      ),
      body: Stack(
        children: [Positioned(child: Container())],
      ),
    );
  }
}
