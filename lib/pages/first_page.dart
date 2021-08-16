import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('second page'),
          onPressed: () {
            Navigator.of(context).pushNamed('/second');
          },
        ),
      ),
    );
  }
}
