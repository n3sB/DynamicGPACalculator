import 'package:flutter/material.dart';

class ListviewLayoutProblemi extends StatelessWidget {
  const ListviewLayoutProblemi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Layout Problemi"),
      ),
      body: Container(
        height: 200,
        decoration:
            BoxDecoration(border: Border.all(width: 4, color: Colors.red)),
        child: Row(
          children: [
            const Text('Başladı'),
            Expanded(
              child: ListView(
                // shrinkWrap: true, // listview çocuklarının yüksekliği kadar yer kaplar
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade400,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade400,
                  )
                ],
              ),
            ),
            const Text('Bitti'),
          ],
        ),
      ),
    );
  }

  Column columnIcindeListe() {
    return Column(
      children: [
        const Text('Başladı'),
        Expanded(
          child: ListView(
            // shrinkWrap: true, // listview çocuklarının yüksekliği kadar yer kaplar
            children: [
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade400,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade400,
              )
            ],
          ),
        ),
        const Text('Bitti'),
      ],
    );
  }
}
