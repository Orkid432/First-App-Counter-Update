import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CounterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() {
    return _CounterScreenState();   
  }
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  void increase() {
    setState(() {
      count++;
    });
  }

  void decrease() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter App:', style: TextStyle(fontSize: 24)),
            Text('$count', style: const TextStyle(fontSize: 48)),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: increase,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text('Increment'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: decrease,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text('Decrement'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: reset,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

