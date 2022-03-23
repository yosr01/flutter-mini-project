import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //   color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '$count',
                style: const TextStyle(
                  fontSize: 33,
                  color: Colors.amber,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count = count + 1;
                    });
                  },
                  child: const Text('Click me'))
            ],
          ),
        ),
      ),
    );
  }
}
