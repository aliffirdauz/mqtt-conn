import 'package:flutter/material.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to MQTT Flutter Connection Project"),
      ),
      body:
        // create a container and show image from internet in it
        Container(
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            "https://images.unsplash.com/photo-1676676701371-dfc95d744f51?auto=format&fit=crop&q=80&w=1856&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            fit: BoxFit.fitWidth,
          ),
        ),
        
    );
  }
}
