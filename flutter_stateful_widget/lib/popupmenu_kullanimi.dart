import 'package:flutter/material.dart';

class PopupMenuKullanimi extends StatefulWidget {
  const PopupMenuKullanimi({super.key});

  @override
  State<PopupMenuKullanimi> createState() => _PopupMenuKullanimiState();
}

class _PopupMenuKullanimiState extends State<PopupMenuKullanimi> {
  String _secilenSehir = '';
  List<String> renkler = ["Mavi", "Kırmızı", "Yeşil", "Sarı"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (value) {
          setState(() {
            _secilenSehir = value;
          });
        },
        // child: Text(_secilenSehir),
        itemBuilder: (BuildContext context) {
          // Menü öğeleri oluşturmak için bu fonksiyon kullanılır
          // return <PopupMenuEntry<String>>[
          //   PopupMenuItem(
          //     child: Text('Ankara'),
          //     value: 'Ankara',
          //   ),
          //   PopupMenuItem(
          //     child: Text('Bursa'),
          //     value: 'Bursa',
          //   ),
          //   PopupMenuItem(
          //     child: Text('Antalya'),
          //     value: 'Antalya',
          //   ),
          // ];
          return renkler
              .map(
                (String oAnkiRenk) => PopupMenuItem(
                  child: Text(oAnkiRenk),
                  value: oAnkiRenk,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
