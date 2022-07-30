import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/product/navigator/app_router.gr.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _text = 'Home View';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.router.navigate(HomeDetailRoute(title: _text));
          },
          child: Text(_text),
        ),
      ),
    );
  }
}
