import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  ThirdPage({required this.data});

  String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).popUntil((route) => route.isFirst);
      }),
    );
  }
}
