import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('third page'),
          onPressed: () {
            Navigator.of(context).pushNamed('/third');
          },
        ),
      ),
    );
  }
}
