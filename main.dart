import 'package:flutter/material.dart';
import 'package:plants_app/homapage.dart';

void main() {
  runApp(const Plants());
}

class Plants extends StatelessWidget {
  const Plants({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
