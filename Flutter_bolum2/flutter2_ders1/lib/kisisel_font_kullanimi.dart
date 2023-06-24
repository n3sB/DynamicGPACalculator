import 'package:flutter/material.dart';

class KisiselFont extends StatelessWidget {
  const KisiselFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Kişisel Font Kullanımı',
        style: TextStyle(
            fontSize: 36, fontWeight: FontWeight.w700, fontFamily: 'Genel'),
      ),
    ]);
  }
}
