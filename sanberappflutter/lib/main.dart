import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: const Icon(Icons.remove),
              onTap: () {
                _counter--;
                setState(() {});
              },
            ),
            const SizedBox(
              width: 20,
            ),
            Text("Nilai counter: $_counter"),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              child: const Icon(Icons.add),
              onTap: () {
                _counter++;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}

// ANALISIS TERHADAP SET STATE
/* 
Function `setState` adalah function yang berasal dari abstract class `State` bawaan dari flutter itu sendiri.

Ketika `setState` dipanggil, maka flutter akan melakukan re-render widget atau build ulang widget dengan state terbaru sehingga apa yang tampil pada layar juga akan berubah. Dalam case ini adalah atribut `_counter` pada class _CounterPageState.

Jadi, ketika `setState` tidak dipanggil, maka flutter tidak melakukan re-render sehingga `_counter` yang tampil di layar juga tidak berubah. Untuk value dari `_counter` sebenarnya sudah berubah namun tidak ada instruksi untuk melakukan re-render.
*/