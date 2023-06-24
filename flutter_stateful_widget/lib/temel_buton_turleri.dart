import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text('textButon'),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.amber),
              overlayColor:
                  MaterialStateProperty.all(Colors.yellow.withOpacity(0.5)),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.blue;
                }
                if (states.contains(MaterialState.hovered)) {
                  return Colors.orange;
                }
                return null;
              })),
          icon: Icon(Icons.ads_click),
          label: Text('textButtonIcon'),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.green, onPrimary: Colors.red),
          onPressed: () {},
          child: const Text('elevetedButton'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.ac_unit),
          style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              side: BorderSide(color: Colors.red, width: 2)),
          label: const Text('elevetedButtonIcon'),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text('outlinedButton'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.zoom_out_sharp),
          label: Text('outlinedButtonIcon'),
        ),
      ],
    );
  }
}
