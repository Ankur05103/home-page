import 'package:flutter/material.dart';

class UnderConstructionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Under Construction')),
      body: Center(
        child: Text(
          'Under Construction',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
