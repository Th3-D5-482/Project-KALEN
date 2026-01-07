import 'package:appilon/components/navBar.dart';
import 'package:appilon/components/search_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Navbar(),
          Column(
            children: [
              Expanded(child: SearchSection()),
              Container(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
