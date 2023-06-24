import 'package:flutter/material.dart';

void main(s) {
  runApp(MyApp());
}

//Material App temel iskeledir.
// Container widget başka bir widgetın rengini değiştirmeye border verme gibi işlere yarıyor
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Başlık'),
        ),
        body: Container(
          color: Colors.red.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dartRowunuOlustur(),
              Expanded(child: dartColumnuOlustur())
            ],
          ),
        ),
      ),
    );
  }

  Container containerOlustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      width: 70,
      height: 70,
      color: renk,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: margin),
      child: Text(
        harf,
        style: TextStyle(fontSize: 48),
      ),
    );
  }

  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur('D', Colors.orange.shade200),
        containerOlustur('A', Colors.orange.shade400),
        containerOlustur('R', Colors.orange.shade600),
        containerOlustur('T', Colors.orange.shade800),
      ],
    );
  }

  Column dartColumnuOlustur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: containerOlustur('E', Colors.orange.shade300, margin: 15),
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade400, margin: 15),
        ),
        Expanded(
          child: containerOlustur('S', Colors.orange.shade500, margin: 15),
        ),
        Expanded(
          child: containerOlustur('L', Colors.orange.shade600, margin: 15),
        ),
        Expanded(
          child: containerOlustur('E', Colors.orange.shade700, margin: 15),
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade800, margin: 15),
        ),
        Expanded(
          child: containerOlustur('İ', Colors.orange.shade900, margin: 15),
        ),
      ],
    );
  }
}
