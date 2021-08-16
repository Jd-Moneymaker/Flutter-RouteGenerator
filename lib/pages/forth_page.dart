 
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('third page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('home page'),
          onPressed: () {},
        ),
      ),
    );
  }
}
