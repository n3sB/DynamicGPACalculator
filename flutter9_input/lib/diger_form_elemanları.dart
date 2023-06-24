import 'package:flutter/material.dart';

class DigerFormElemanlari extends StatefulWidget {
  const DigerFormElemanlari({super.key});

  @override
  State<DigerFormElemanlari> createState() => _DigerFormElemanlariState();
}

class _DigerFormElemanlariState extends State<DigerFormElemanlari> {
  bool checkBoxState = false;
  String sehir = "";
  bool switchState = false;
  double sliderDeger = 18;
  String _secilenRenk = "Kırmızı";
  List<String> sehirler = ["Ankara", "İzmir", "Antalya", "İstanbul"];
  String secilenSehir = "Ankara";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_circle),
      ),
      appBar: AppBar(
        title: Text("Diğer Form Elemanları"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            CheckboxListTile(
              value: checkBoxState,
              onChanged: (secildi) {
                setState(() {
                  checkBoxState = secildi!;
                });
              },
              activeColor: Colors.red,
              title: Text("CheckBox Title"),
              subtitle: Text("CheckBox SubTitle"),
              secondary: Icon(Icons.add),
              selected: true,
            ),
            RadioListTile<String>(
              title: Text("Ankara"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.map),
              value: "Ankara",
              groupValue: sehir,
              onChanged: (value) {
                setState(() {
                  sehir = value!;
                  debugPrint(value);
                });
              },
            ),
            RadioListTile<String>(
              title: Text("Bursa"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.map),
              value: "Bursa",
              groupValue: sehir,
              onChanged: (value) {
                setState(() {
                  sehir = value!;
                  debugPrint(value);
                });
              },
            ),
            RadioListTile<String>(
              title: Text("İzmir"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.map),
              value: "İzmir",
              groupValue: sehir,
              onChanged: (value) {
                setState(() {
                  sehir = value!;
                  debugPrint(value);
                });
              },
            ),
            SwitchListTile(
              title: Text("Switch Title"),
              subtitle: Text("Switch Subtitle"),
              secondary: Icon(Icons.refresh),
              value: switchState,
              onChanged: (value) {
                setState(() {
                  switchState = value;
                });
              },
            ),
            Text("Slider seçiniz"),
            Slider(
              min: 18,
              max: 68,
              divisions: 50,
              label: sliderDeger.toString(),
              value: sliderDeger,
              onChanged: (value) {
                setState(() {
                  sliderDeger = value;
                });
              },
            ),
            DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                  value: "Kırmızı",
                  child: Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        color: Colors.red,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text("Kırmızı"),
                    ],
                  ),
                ),
                DropdownMenuItem<String>(
                  value: "Sarı",
                  child: Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        color: Colors.yellow,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text("Sarı"),
                    ],
                  ),
                ),
                DropdownMenuItem<String>(
                  value: "Yeşil",
                  child: Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        color: Colors.green,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text("Yeşil"),
                    ],
                  ),
                ),
              ],
              onChanged: (secilen) {
                setState(() {
                  _secilenRenk = secilen!;
                });
              },
              hint: Text("Seçiniz"),
              value: _secilenRenk,
            ),
            DropdownButton<String>(
              items: sehirler.map(
                (oAnkisehir) {
                  return DropdownMenuItem<String>(
                    child: Text(oAnkisehir),
                    value: oAnkisehir,
                  );
                },
              ).toList(),
              onChanged: (secilen) {
                setState(
                  () {
                    secilenSehir = secilen!;
                  },
                );
              },
              value: secilenSehir,
            )
          ],
        ),
      ),
    );
  }
}
