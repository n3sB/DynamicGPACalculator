import 'dart:math' as matematik;

import 'package:flutter/material.dart';

class CollapsableToolbarOrnek extends StatelessWidget {
  const CollapsableToolbarOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.red,
          expandedHeight: 200,
          floating: true,
          pinned: true,
          snap: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Sliver App Bar"),
            centerTitle: true,
            background: Image.asset(
              "assets/images/car.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),

        //elemanları statik oluşturulan sliver list view
        SliverPadding(
          padding: EdgeInsets.all(2),
          sliver: SliverList(
            delegate: SliverChildListDelegate(sabitListeElemanlari()),
          ),
        ),

        //elemanları builder ile oluşan bir sliver list view
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFoksiyon,
                childCount: 10),
          ),
        ),

        //elemanları statik oluşturulan ama extent mantığıyla çalışan listview
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverFixedExtentList(
              delegate: SliverChildListDelegate(sabitListeElemanlari()),
              itemExtent:
                  100), //daha performanslı çünkü gelecek her elemanın boyutu bellidir
        ),

        //elemanları dinamik oluşturulan ama extent mantığıyla çalışan listview
        SliverPadding(
          padding: EdgeInsets.all(20),
          sliver: SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFoksiyon,
                  childCount: 5),
              itemExtent:
                  100), //daha performanslı çünkü gelecek her elemanın boyutu bellidir
        ),

        //sabit elemanlarla bir satırda kaç eleman olacağını söylediğimiz grid türü
        SliverPadding(
          padding: EdgeInsets.all(20),
          sliver: SliverGrid(
            delegate: SliverChildListDelegate(sabitListeElemanlari()),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          ),
        ),

        //dinamik(builder ile üretilen) elemanlarla bir satırda kaç eleman olacağını söylediğimiz grid türü
        SliverPadding(
          padding: EdgeInsets.all(24),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFoksiyon,
                childCount: 6),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          ),
        ),

        SliverPadding(
          padding: EdgeInsets.all(20),
          sliver: SliverGrid.count(
            crossAxisCount: 2,
            children: sabitListeElemanlari(),
          ),
        ),

        SliverPadding(
          padding: EdgeInsets.all(25),
          sliver: SliverGrid.extent(
            maxCrossAxisExtent: 170,
            children: sabitListeElemanlari(),
          ),
        ),
      ],
    );
  }

  Widget? _dinamikElemanUretenFoksiyon(BuildContext context, int index) {
    return Container(
      height: 100,
      color: rastgeleRenkUret(),
      alignment: Alignment.center,
      child: Text(
        "Dinamik Liste Elemanı ${index + 1}",
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Color rastgeleRenkUret() {
    return Color.fromARGB(
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }
}

List<Widget> sabitListeElemanlari() {
  return [
    Container(
      height: 100,
      color: Colors.amber,
      alignment: Alignment.center,
      child: Text(
        "Sabit Liste Elemanı 1",
        style: TextStyle(fontSize: 24),
      ),
    ),
    Container(
      height: 100,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        "Sabit Liste Elemanı 2",
        style: TextStyle(fontSize: 24),
      ),
    ),
    Container(
      height: 100,
      color: Colors.purple,
      alignment: Alignment.center,
      child: Text(
        "Sabit Liste Elemanı 3",
        style: TextStyle(fontSize: 24),
      ),
    ),
    Container(
      height: 100,
      color: Colors.green,
      alignment: Alignment.center,
      child: Text(
        "Sabit Liste Elemanı 4",
        style: TextStyle(fontSize: 24),
      ),
    ),
    Container(
      height: 100,
      color: Colors.teal,
      alignment: Alignment.center,
      child: Text(
        "Sabit Liste Elemanı 5",
        style: TextStyle(fontSize: 24),
      ),
    ),
    Container(
      height: 100,
      color: Colors.orange,
      alignment: Alignment.center,
      child: Text(
        "Sabit Liste Elemanı 6",
        style: TextStyle(fontSize: 24),
      ),
    ),
    Container(
      height: 100,
      color: Colors.pink,
      alignment: Alignment.center,
      child: Text(
        "Sabit Liste Elemanı 7",
        style: TextStyle(fontSize: 24),
      ),
    ),
    Container(
      height: 100,
      color: Colors.yellow,
      alignment: Alignment.center,
      child: Text(
        "Sabit Liste Elemanı 8",
        style: TextStyle(fontSize: 24),
      ),
    ),
    Container(
      height: 100,
      color: Colors.brown,
      alignment: Alignment.center,
      child: Text(
        "Sabit Liste Elemanı 9",
        style: TextStyle(fontSize: 24),
      ),
    ),
    Container(
      height: 100,
      color: Colors.amber,
      alignment: Alignment.center,
      child: Text(
        "Sabit Liste Elemanı 10",
        style: TextStyle(fontSize: 24),
      ),
    ),
  ];
}
