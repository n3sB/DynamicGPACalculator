import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MyNewTextWidget(),
            Text(
              _sayac.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayaci_arttir();
          debugPrint("Butona tıklandı ve sayaç değeri $_sayac");
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void sayaci_arttir() {
    setState(() {
      _sayac++;
    }); // ilgili widgetin build methodu hot reload gibi çalışır
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Butona basılma miktarı',
      style: TextStyle(fontSize: 30),
    );
  }
}
