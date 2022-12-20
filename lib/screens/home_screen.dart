
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 18, color: Colors.white);
    int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        elevation: 0.0,
      ),
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Numero de Clicks", style: fontSize30),
            Text('$counter', style: fontSize30)
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          // print(counter);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
