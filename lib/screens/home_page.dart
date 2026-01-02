import 'package:appilon/components/navBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Navbar(),
          Column(children: []),
        ],
      ),
    );
  }
}
