import 'package:flutter/material.dart';

class HomeDetailView extends StatelessWidget {
  const HomeDetailView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
