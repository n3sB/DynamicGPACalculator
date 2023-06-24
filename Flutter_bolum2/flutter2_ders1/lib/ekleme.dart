import 'package:flutter/material.dart';

class EklemeSayfasi extends StatefulWidget {
  const EklemeSayfasi(Key k) : super(key: k);

  @override
  State<EklemeSayfasi> createState() => _EklemeSayfasiState();
}

class _EklemeSayfasiState extends State<EklemeSayfasi> {
  bool? yatayEksen;
  bool? pageSnapping;
  bool? reverseSira;
  var myController;

  @override
  void initState() {
  
    super.initState();
    yatayEksen = false;
    pageSnapping = true;
    reverseSira = false;
    myController =
        PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            key: PageStorageKey(context),
            scrollDirection:
                yatayEksen == true ? Axis.horizontal : Axis.vertical,
            reverse: reverseSira!,
            controller: myController,
            pageSnapping: pageSnapping!,
            onPageChanged: (index) {
              debugPrint("Page change gelen index $index");
            },
            children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.indigo.shade100,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sayfa 1",
                        style: TextStyle(fontSize: 30),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            myController.jumpToPage(2);
                          },
                          child: Text("3. sayfaya git"))
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.amber.shade100,
                child: Center(
                  child: Text(
                    "Sayfa 2",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.teal.shade100,
                child: Center(
                  child: Text(
                    "Sayfa 3",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.blueGrey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Yatay Eksende Çalış"),
                      Checkbox(
                        value: yatayEksen,
                        onChanged: (value) {
                          setState(() {
                            yatayEksen = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Page Snapping"),
                      Checkbox(
                        value: pageSnapping,
                        onChanged: (value) {
                          setState(() {
                            pageSnapping = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Ters sırada çalış"),
                      Checkbox(
                        value: reverseSira,
                        onChanged: (value) {
                          setState(() {
                            reverseSira = value!;
                          });
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
