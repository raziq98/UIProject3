import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

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
