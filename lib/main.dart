import 'package:flutter/material.dart';

import 'package:curso_1/screens/counter_screen.dart';


void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, 
        home: CounterScreeen() //page counter
      );
  }
}
