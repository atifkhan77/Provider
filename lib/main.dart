import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/provider_counter.dart';
import 'package:flutter_provider/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: const MaterialApp(
        home: Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}
