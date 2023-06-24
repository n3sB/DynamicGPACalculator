import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid View Örnek')),
      body: GridView.builder(
        itemCount: 30,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                // border: new Border(
                //   top: BorderSide(
                //       color: Colors.blue, width: 5, style: BorderStyle.solid),
                //   bottom: BorderSide(
                //       color: Colors.black, width: 5, style: BorderStyle.solid),
                // ),
                border: Border.all(color: Colors.orange, width: 5),
                borderRadius: BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  new BoxShadow(
                      color: Colors.orange,
                      offset: new Offset(12.0, 12),
                      blurRadius: 5),
                ],

                color: Colors.blue[100 * ((index + 1) % 9)],
                gradient: const LinearGradient(
                    colors: [Colors.yellow, Colors.red],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter),
                image:
                    DecorationImage(image: AssetImage("assets/images/car.jpg")),
              ),
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Merhaba Flutter ${index + 1}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
              ),
            ),
            onTap: () {
              _alerDialogIslemleri(context);
            },
            onDoubleTap: () {
              debugPrint("Çift tıklandı");
            },
            onHorizontalDragStart: (details) {
              debugPrint("Kaydırıldı $details");
            },
          );
        },
      ),
    );
  }
}

void _alerDialogIslemleri(
  BuildContext myContext,
) {
  showDialog(
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text('enes'),
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
                  child: Text(
                    'Kapat',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Tamam',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            )
          ],
        );
      });
}

/**
 *  GridView.extent(
        maxCrossAxisExtent: 150,
        primary: false,
        // reverse: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade300,
            child: const Text(
              "Merhaba Flutter 1",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade400,
            child: const Text(
              "Merhaba Flutter 2",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade500,
            child: const Text(
              "Merhaba Flutter 3",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade600,
            child: const Text(
              "Merhaba Flutter 4",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade300,
            child: const Text(
              "Merhaba Flutter 5",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade400,
            child: const Text(
              "Merhaba Flutter 6",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade500,
            child: const Text(
              "Merhaba Flutter 7",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade600,
            child: const Text(
              "Merhaba Flutter 8",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade300,
            child: const Text(
              "Merhaba Flutter 9",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade400,
            child: const Text(
              "Merhaba Flutter 10",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade500,
            child: const Text(
              "Merhaba Flutter 11",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade600,
            child: const Text(
              "Merhaba Flutter 12",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade300,
            child: const Text(
              "Merhaba Flutter 13",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade400,
            child: const Text(
              "Merhaba Flutter 14",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade500,
            child: const Text(
              "Merhaba Flutter 15",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red.shade600,
            child: const Text(
              "Merhaba Flutter 16",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    
 * 
*/

/*GridView.count(
        crossAxisCount: 2,
        primary: false,
        reverse: true,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,
        children: [
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.teal.shade300,
          //   child: const Text(
          //     "Merhaba Flutter 1",
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.teal.shade400,
          //   child: const Text(
          //     "Merhaba Flutter 2",
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.teal.shade500,
          //   child: const Text(
          //     "Merhaba Flutter 3",
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.teal.shade600,
          //   child: const Text(
          //     "Merhaba Flutter 4",
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.teal.shade300,
          //   child: const Text(
          //     "Merhaba Flutter 5",
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.teal.shade400,
          //   child: const Text(
          //     "Merhaba Flutter 6",
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.teal.shade500,
          //   child: const Text(
          //     "Merhaba Flutter 7",
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.teal.shade600,
          //   child: const Text(
          //     "Merhaba Flutter 8",
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text(
              "Merhaba Flutter 9",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade400,
            child: const Text(
              "Merhaba Flutter 10",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade500,
            child: const Text(
              "Merhaba Flutter 11",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade600,
            child: const Text(
              "Merhaba Flutter 12",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade300,
            child: const Text(
              "Merhaba Flutter 13",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade400,
            child: const Text(
              "Merhaba Flutter 14",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade500,
            child: const Text(
              "Merhaba Flutter 15",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.teal.shade600,
            child: const Text(
              "Merhaba Flutter 16",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
*/
