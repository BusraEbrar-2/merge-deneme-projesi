import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  HomeScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ana Sayfa')),
      body: Center(
        child: Text('Hoş geldin, $username!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
