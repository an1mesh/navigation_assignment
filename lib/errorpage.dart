import 'package:flutter/material.dart';

class ErrorRoute extends StatelessWidget {
  ErrorRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('Error'),
      ),
    );
  }
}
