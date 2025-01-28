import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/zikirmatik.png',
                  width: 300,
                ),
                Positioned(
                  top: 46,
                  right: 80,
                  child: _counterText(),
                ),
                Positioned(bottom: 30, child: _incrementButton()),
                Positioned(
                  right: 77,
                  bottom: 115,
                  child: _resetButton(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  GestureDetector _resetButton() {
    return GestureDetector(
      //-
      onTap: () {
        //-
        _resetCounter(); //-
      }, //-
      child: Container(
        //-
        width: 30, //-
        height: 30, //-
        decoration: BoxDecoration(
          //-

          borderRadius: BorderRadius.circular(60), //-
        ), //-
      ), //-
    ); //-
  } //-

// {"conversationId":"9a07a12d-b79b-4cf8-957e-26dbdf0be7f3","source":"instruct"}

  GestureDetector _incrementButton() {
    return GestureDetector(
      onTap: () {
        _incrementCounter();
      },
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(60),
        ),
      ),
    );
  }

  Text _counterText() {
    return Text(
      _counter.toString(),
      style: TextStyle(
        fontFamily: 'Digital7',
        fontSize: 50,
        color: Colors.white,
      ),
    );
  }
}
