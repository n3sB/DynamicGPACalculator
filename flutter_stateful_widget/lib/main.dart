import 'package:flutter/material.dart';
import 'package:flutter_stateful_widget/dropdown_button_kullanimi.dart';
import 'package:flutter_stateful_widget/image_widgets.dart';
import 'package:flutter_stateful_widget/popupmenu_kullanimi.dart';
import 'package:flutter_stateful_widget/temel_buton_turleri.dart';

void main() {
  debugPrint('main methodu çalıştı');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme: const TextTheme(
              headlineLarge: TextStyle(
                  color: Colors.purple, fontWeight: FontWeight.bold))),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image Örnekleri'),
          actions: [PopupMenuKullanimi()],
        ),
        body: const PopupMenuKullanimi(),
      ),
    );
  }
}
