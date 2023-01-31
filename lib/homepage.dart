import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? backText = 'user';
  // HomePage({required this.data});
  var myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(backText!),
      ),
      body: Center(
        child: TextField(
          controller: myController,
          decoration: InputDecoration(
            hintText: 'Enter',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        Object? backText = await Navigator.of(context).pushNamed(
          '/second',
          arguments: myController.text,
        );
      }),
    );
  }
}
