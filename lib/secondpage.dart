import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({required this.data});

  String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(data)),
      body: Center(
        child: Text(data),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).pushNamed('/third', arguments: data);
      }),
    );
  }
}
