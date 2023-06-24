import 'package:flutter/material.dart';
import 'package:flutter9_input/sayac_state.dart';

class GlobalKeyKullanimi extends StatelessWidget {
  GlobalKeyKullanimi({super.key});
  final sayacWidgetKey = GlobalKey<SayacWidgetState>();

  @override
  Widget build(BuildContext context) {
    print(1);
    return Scaffold(
      appBar: AppBar(
        title: Text("Global Key Kullanimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Butona basılma miktarı: ",
              style: TextStyle(fontSize: 24),
            ),
            SayacWidget(
              key: sayacWidgetKey,
            ),
            Text(sayacWidgetKey.currentState?.sayac.toString() ?? "0"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayacWidgetKey.currentState!.arttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
