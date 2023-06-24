import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;

  List<String> _tumSehirler = [
    "Ankara",
    "İstanbul",
    "İzmir",
    "Antalya",
    "Niğde"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: DropdownButton<String>(
      onChanged: (value) {
        setState(() {
          _secilenSehir = value;
        });
      },
      icon: const Icon(
        Icons.arrow_downward_outlined,
        color: Colors.blue,
      ),
      iconSize: 14,
      style: TextStyle(color: const Color.fromARGB(255, 54, 168, 244)),
      underline: Container(
        height: 2,
        color: const Color.fromARGB(255, 44, 7, 255),
      ),
      hint: Text('Şehir Seçiniz'),
      items: _tumSehirler
          .map(
            (String oAnkiSehir) => DropdownMenuItem(
              child: Text(oAnkiSehir),
              value: oAnkiSehir,
            ),
          )
          .toList(),

      // items: const [
      //   DropdownMenuItem(
      //     child: Text("Ankara"),
      //     value: 'Ankara',
      //   ),
      //   DropdownMenuItem(
      //     child: Text("İzmir"),
      //     value: 'İzmir',
      //   ),
      //   DropdownMenuItem(
      //     child: Text("İstanbul"),
      //     value: 'İstanbul',
      //   )
      // ],
      value: _secilenSehir,
    ));
  }
}
