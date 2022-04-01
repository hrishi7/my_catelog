import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int days = 30;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catelog App"),
      ),
      body: const Center(child: Text("Welcome to $days days of flutter")),
      drawer: const Drawer(),
    );
  }
}
