import 'package:flutter/material.dart';

import 'models/veri.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa(Key k) : super(key: k);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  List<Veri>? tumVeriler;

  @override
  void initState() {
    super.initState();
    tumVeriler = [
      Veri("Biz Kimiz?", false, "Biz kimizin içeriği buraya gelecek"),
      Veri("Neden biz?", false, "Neden bizin içeriği buraya gelecek"),
      Veri("Misyon ve Vizyon ?", false,
          "Misyon ve Vizyon içeriği buraya gelecek"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, int index) {
        return ExpansionTile(
          key: PageStorageKey("$index"),
          title: Text(tumVeriler![index].baslik),
          initiallyExpanded: tumVeriler![index].expanded,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color:
                  index % 2 == 0 ? Colors.red.shade200 : Colors.yellow.shade300,
              child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(tumVeriler![index].icerik)),
            )
          ],
        );
      },
      itemCount: tumVeriler!.length,
    );
  }
}
