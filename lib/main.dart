import 'package:flutter/material.dart';
import 'package:work_book/lesson18/lesson18.dart';
import 'package:work_book/lesson20/lesson20.dart';
import 'lesson19/lesson19.dart';
import 'lesson21/lesson21.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: TopPage(),
      ),
    );
  }
}

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Lesson18()),
                );
              },
              child: const Text('Lesson18')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Lesson19()),
                );
              },
              child: const Text('Lesson19')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Lesson20()),
                );
              },
              child: const Text('Lesson20')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Lesson21()),
                );
              },
              child: const Text('Lesson21')),
        ],
      ),
    ));
  }
}
