import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/provider_counter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    final count = counter.count;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Center(
            child: Text(
              "Provider Use",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 100)),
              Text(
                " you pressed button \n $count times",
                style: const TextStyle(fontSize: 20, color: Colors.deepPurple),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  counter.increment();
                },
                child: const Text('increment'),
              ),
              ElevatedButton(
                onPressed: () {
                  counter.decrement();
                },
                child: const Text('decrement'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
