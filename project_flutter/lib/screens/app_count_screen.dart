import 'package:flutter/material.dart';

class AppCountScreen extends StatefulWidget {
  const AppCountScreen({super.key});

  @override
  State<AppCountScreen> createState() => _AppCountScreenState();
}

class _AppCountScreenState extends State<AppCountScreen> {
  int count = 0;
  final textH1 = const TextStyle(
      fontSize: 60, fontWeight: FontWeight.bold, letterSpacing: 0.5);
  final textH2 = const TextStyle(
      fontSize: 40, fontWeight: FontWeight.bold, letterSpacing: 0.5);
  final textH3 = const TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 0.6);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App counter',
          style: textH3,
        ),
        centerTitle: true,
        toolbarHeight: 90,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$count',
              style: textH1,
            ),
            Text(
              count > 1 ? 'Clicks' : 'Clic',
              style: textH2,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              if (count > 0) {
                setState(() {
                  count--;
                });
              }
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton.extended(
            onPressed: () {
              setState(() {
                count = 0;
              });
            },
            label: const Text('Reiniciar'),
          ),
        ],
      ),
    );
  }
}
