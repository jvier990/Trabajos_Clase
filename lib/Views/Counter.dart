import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int countador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$countador',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(countador > 1 ? 'Clicks ' : 'Click',
                style: TextStyle(fontSize: 60)),
            Image.network(
                'https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExaTUyMWEzcWlpZ3dlcG85ZnVmdGw3OTA1em5vemZhMmx1YjNjeDdoMSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/23xN9cYQSKwFy/giphy.gif')
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (countador < 10) {
                    countador++;
                  }
                });
              },
              child: const Icon(Icons.plus_one)),
          const SizedBox(
            height: 18,
          ),
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (countador > 0) {
                    countador--;
                  }
                });
              },
              child: const Icon(Icons.exposure_minus_1)),
          const SizedBox(
            height: 18,
          ),
        ],
      ),
    );
  }
}
