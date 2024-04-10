import 'package:flutter/material.dart';

class DummyApp extends StatelessWidget {
  const DummyApp({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio App',
      home: child,
    );
  }
}
