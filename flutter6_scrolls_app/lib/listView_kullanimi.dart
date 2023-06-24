import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({super.key});
  List<Ogrenci> tumOgrenciler = List.generate(
    500,
    (index) => Ogrenci(index + 1, 'Enes ${index + 1}', 'Baysal ${index + 1}'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Öğrenci Listesi'),
      ),
      body: buildListviewSeparated(),
    );
  }

  ListView buildListviewSeparated() {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          var oAnkiOgrenci = tumOgrenciler[index];
          return Card(
            color: index % 2 == 0
                ? Colors.orange.shade200
                : Colors.purple.shade200,
            child: ListTile(
              onTap: () {
                if (index % 2 == 0) {
                  EasyLoading.instance.backgroundColor = Colors.red;
                  EasyLoading.instance.textColor = Colors.white;
                } else {
                  EasyLoading.instance.backgroundColor = Colors.black;
                  EasyLoading.instance.textColor = Colors.white;
                }
                EasyLoading.showToast('Eleman ${index + 1} tıklandı',
                    duration: Duration(seconds: 1),
                    dismissOnTap: true,
                    toastPosition: EasyLoadingToastPosition.bottom);
              },
              onLongPress: () {
                _alerDialogIslemleri(context, oAnkiOgrenci);
              },
              title: Text(oAnkiOgrenci.isim),
              subtitle: Text(oAnkiOgrenci.soyisim),
              leading: CircleAvatar(
                child: Text(oAnkiOgrenci.id.toString()),
              ),
            ),
          );
        },
        itemCount: tumOgrenciler.length,
        separatorBuilder: (context, index) {
          var yeniIndex = index + 1;
          if (yeniIndex % 4 == 0) {
            return Divider(
              thickness: 2,
              color: Colors.teal,
            );
          }
          return SizedBox();
        });
  }

  ListView klasikListView() {
    return ListView(
      reverse: true,
      children: tumOgrenciler
          .map((Ogrenci ogr) => ListTile(
                title: Text(ogr.isim),
                subtitle: Text(ogr.soyisim),
                leading: CircleAvatar(
                  child: Text(ogr.id.toString()),
                ),
              ))
          .toList(),
    );
  }

  void _alerDialogIslemleri(BuildContext myContext, Ogrenci secilen) {
    showDialog(
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(secilen.toString()),
            content: SingleChildScrollView(
              child: ListBody(children: [
                Text('data' * 100),
                Text('data' * 100),
                Text('data'),
              ]),
            ),
            actions: [
              ButtonBar(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Kapat'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Tamam'),
                  ),
                ],
              )
            ],
          );
        });
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);

  @override
  String toString() {
    // TODO: implement toString
    return "İsim: $isim Soyisim: $soyisim id: $id";
  }
}
