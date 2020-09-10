import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch screen'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Launch screen'),
            onPressed: () => Navigator.pushNamed(context, '/second')),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Routes Navigation',
    initialRoute: '/first',
    routes: {
      '/first': (context) => FirstScreen(),
      '/second': (context) => SecondScreen()
    },
  ));
}
