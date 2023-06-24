import 'package:flutter/material.dart';
import 'package:flutter2_ders1/drawer_menu.dart';
import 'package:flutter2_ders1/kisisel_font_kullanimi.dart';
import 'package:flutter2_ders1/profil.dart';
import 'package:flutter2_ders1/tabs.dart';

import 'anasayfa.dart';
import 'arama.dart';
import 'ekleme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Genel',
        primarySwatch: Colors.amber,
      ),
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem = 0;
  List<Widget>? tumSayfalar;
  Anasayfa? sayfa1;
  AramaSayfasi? sayfaArama;
  EklemeSayfasi? sayfaEkle;
  ProfilSayfasi? sayfaKisiler;

  var keyAnasayfa = PageStorageKey("key_ana_sayfa");
  var keyArama = PageStorageKey("key_arama_sayfa");
  var keyEkleme = PageStorageKey("key_ekleme_sayfa");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sayfa1 = Anasayfa(keyAnasayfa);
    sayfaArama = AramaSayfasi(keyArama);
    sayfaEkle = EklemeSayfasi(keyEkleme);
    sayfaKisiler = ProfilSayfasi();
    tumSayfalar = [sayfa1!, sayfaArama!, sayfaEkle!];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      // appBar: AppBar(
      //   title: const Text('Flutter Dersleri Bölüm 2'),
      // ),
      body: secilenMenuItem <= tumSayfalar!.length - 1
          ? tumSayfalar![secilenMenuItem]
          : tumSayfalar![0],
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(
          canvasColor: Colors.cyan.shade200, primaryColor: Colors.orangeAccent),
      child: BottomNavigationBar(
        currentIndex: secilenMenuItem,
        onTap: (value) {
          setState(() {
            secilenMenuItem = value;
            if (value == 3) {
              Navigator.of(context)
                  .push(
                MaterialPageRoute(
                  builder: (context) => TabOrnek(),
                ),
              )
                  .then((value) {
                secilenMenuItem = 0;
              });
            }
          });
        },
        type: BottomNavigationBarType
            .shifting, // shifting olduğunda her birine arka plan rengi vermeliyiz eğer 4ten fazla eleman var ise fixed olmalı veya shifting
        selectedItemColor: Colors.red,
        backgroundColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.amber,
            label: "Anasayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            backgroundColor: Colors.brown,
            label: "Ara",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            backgroundColor: Colors.green,
            label: "Ekle",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            backgroundColor: Colors.purple,
            activeIcon: Icon(Icons.call), //aktif olduğunda icon değişiyor
            label: "Profil",
          ),
        ],
      ),
    );
  }
}
