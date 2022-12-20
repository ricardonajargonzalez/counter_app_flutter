import 'package:flutter/material.dart';

class CounterScreeen extends StatefulWidget {
  const CounterScreeen({Key? key}) : super(key: key);

  @override
  State<CounterScreeen> createState() => _CounterScreeenState();
}

class _CounterScreeenState extends State<CounterScreeen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 18, color: Colors.white);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Counter Screen")),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn, required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(Icons.exposure_plus_1_sharp),
        ),
        const SizedBox(width: 20),
        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.restart_alt_sharp),
        ),
        const SizedBox(width: 20),
        FloatingActionButton(
          onPressed: ()=> decreaseFn(),
          child: const Icon(Icons.exposure_minus_1),
        )
      ],
    );
  }
}
