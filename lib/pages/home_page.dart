import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 30;
     //data types
    //String
    //double
    // bool
    //num
    //var
    //const
    //final

    return Scaffold(
        appBar: AppBar(
          title: const Text("Catelog App"),
        ),
        body:Center(
          child: Container(
            child: Text("Welcome to $days days of flutter")
        )
      ),
      drawer: Drawer(),
    );
  }
}