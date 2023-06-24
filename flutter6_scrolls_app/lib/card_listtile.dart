import 'package:flutter/material.dart';

class CardveListtile extends StatelessWidget {
  const CardveListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card ve List Tile'),
      ),
      body: Center(
        child: ListView(
          reverse: true,
          children: [
            Column(
              children: [
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
              ],
            ),
            Text('Selam'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Buton'),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView singleChildKullan() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade100,
          shadowColor: Colors.red,
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: const ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text('Başlık'),
            subtitle: Text('Alt Başlık'),
            trailing: Icon(Icons.people),
          ),
        ),
        Divider(
          color: Colors.red.shade900,
          thickness: 1,
          indent: 50,
          endIndent: 50,
          height: 1,
        )
      ],
    );
  }
}
