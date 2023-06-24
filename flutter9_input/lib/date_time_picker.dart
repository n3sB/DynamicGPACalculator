import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

class TarihSaatOrnekState extends StatefulWidget {
  const TarihSaatOrnekState({super.key});

  @override
  State<TarihSaatOrnekState> createState() => _TarihSaatOrnekStateState();
}

class _TarihSaatOrnekStateState extends State<TarihSaatOrnekState> {
  DateTime suan = DateTime.now();

  DateTime ucAyOncesi = DateTime(2023, 3);
  DateTime yirmiGunSonrasi = DateTime(2023, 12, 14);
  TimeOfDay suAnkiSaat = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Picker"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: suan,
                        firstDate: ucAyOncesi,
                        lastDate: yirmiGunSonrasi)
                    .then((secilenTarih) {
                  debugPrint(secilenTarih.toString());
                  debugPrint(secilenTarih?.millisecondsSinceEpoch.toString());
                  debugPrint(secilenTarih?.toIso8601String());
                  debugPrint(secilenTarih?.toUtc().toIso8601String());
                });
              },
              child: Text("Tarih Seç"),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
            ElevatedButton(
              onPressed: () {
                showTimePicker(context: context, initialTime: suAnkiSaat)
                    .then((value) {
                  debugPrint(value?.hour.toString());
                  debugPrint(value?.minute.toString());
                  debugPrint(value?.format(context));
                });
              },
              child: Text("Saat Seç"),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
