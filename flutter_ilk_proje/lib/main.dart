import 'package:flutter/material.dart';

void main(s) {
  runApp(MyApp());
}

//Material App temel iskeledir.
// Container widget başka bir widgetın rengini değiştirmeye border verme gibi işlere yarıyor
class MyApp extends StatelessWidget {
  final String _img1 =
      'https://res.cloudinary.com/tasit-com/image/upload/c_scale,w_756,h_434,dpr_2/f_webp,q_auto/v1665653440/400.000-tl-alti-2.-el-araba-clio.jpeg?_i=AA';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Başlık'),
        ),
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: expandedRowColumnContainer,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Tıklandı");
          },
          backgroundColor: Colors.red,
          child: const Icon(
            Icons.add,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

  List<Widget> get sorunluContainer {
    return [
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.purple,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.black,
      )
    ];
  }

  List<Widget> get flexibleContainer {
    return [
      Flexible(
        // içerik kadar yer tut lazımsa küçült verilen değer kadar büyür en fazla
        child: Container(
          width: 200,
          height: 300,
          color: Colors.yellow,
        ),
      ),
      Flexible(
        child: Container(
          width: 200,
          height: 300,
          color: Colors.red,
        ),
      )
    ];
  }

  List<Widget> get expandedContainer {
    return [
      Expanded(
        //expanded içeriğe yayılacak şekilde ayarlanır genişiği
        flex: 2, // sarı kutu diğerlerinin kaç katı olacağını flexle belirleriz
        child: Container(
          width: 100,
          height: 100,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      ),
      Expanded(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.orange,
        ),
      )
    ];
  }

  List<Widget> get expandedRowColumnContainer {
    return [
      Flexible(
        child: Container(
          width: 70,
          height: 70,
          color: Colors.yellow,
          alignment: Alignment.center,
          child: const Text(
            'D',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      Flexible(
        child: Container(
          width: 70,
          height: 70,
          color: Colors.yellow,
          alignment: Alignment.center,
          child: const Text(
            'E',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      Flexible(
        child: Container(
          width: 70,
          height: 70,
          color: Colors.yellow,
          alignment: Alignment.center,
          child: const Text(
            'R',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      Flexible(
        child: Container(
          width: 70,
          height: 70,
          color: Colors.yellow,
          alignment: Alignment.center,
          child: const Text(
            'S',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      Flexible(
        child: Container(
          width: 70,
          height: 70,
          color: Colors.yellow,
          alignment: Alignment.center,
          child: const Text(
            'L',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      Flexible(
        child: Container(
          width: 70,
          height: 70,
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text(
            'E',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      Flexible(
        child: Container(
          width: 70,
          height: 70,
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text(
            'R',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      Flexible(
        child: Container(
          width: 70,
          height: 70,
          color: Colors.orange,
          alignment: Alignment.center,
          child: const Text(
            'İ',
            style: TextStyle(fontSize: 20),
          ),
        ),
      )
    ];
  }

  Column ColumnRow() {
    // child: const Row(
    //   mainAxisSize: MainAxisSize.max,
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   crossAxisAlignment: CrossAxisAlignment.end,
    //   children: <Widget>[
    //     Icon(
    //       Icons.add_circle,
    //       size: 42,
    //       color: Colors.green,
    //     ),
    //     Icon(
    //       Icons.add_circle,
    //       size: 42,
    //       color: Colors.pink,
    //     ),
    //     Icon(
    //       Icons.add_circle,
    //       size: 42,
    //       color: Colors.cyanAccent,
    //     ),
    //     Icon(
    //       Icons.add_circle,
    //       size: 42,
    //       color: Colors.yellow,
    //     ),
    //   ],
    // ),
    return const Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text("E"), Text("N"), Text("E"), Text("S")],
        ),
        Icon(
          Icons.add_circle,
          size: 42,
          color: Colors.green,
        ),
        Icon(
          Icons.add_circle,
          size: 42,
          color: Colors.pink,
        ),
        Icon(
          Icons.add_circle,
          size: 42,
          color: Colors.cyanAccent,
        ),
        Icon(
          Icons.add_circle,
          size: 42,
          color: Colors.yellow,
        ),
      ],
    );
  }

  Widget containerDersleri() {
    return Center(
      child: Container(
        // body: Container(
        //   width: 200,
        //   height: 200,
        //   // alignment: const Alignment(
        //   //     0, 0), // alignment null değilse parentı kadar yer kaplar
        //   color: Colors.purple,
        //   margin: const EdgeInsets.fromLTRB(10, 20, 2, 10),
        //   padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        //   // constraints: const BoxConstraints(
        //   //     minHeight: 100, minWidth: 100, maxHeight: 200, maxWidth: 200),
        //   child: Text(
        //     'Enes' * 2,
        //     textAlign: TextAlign.center,
        //   ),
        // ),

        // body: Center(
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     color: Colors.red,
        //     child: Container(
        //       color: Colors.blue,
        //       margin: const EdgeInsets.all(40),
        //       width: 50,
        //       height: 50,
        //       alignment: Alignment(0, 0),
        //       child: const Text(
        //         'Enes',
        //       ),
        //     ),
        //   ),
        // ),
        // body: Center(
        //   heightFactor: 3,
        //   widthFactor: 2,
        //   child: Container(
        //     transform: Matrix4.rotationZ(0.5),
        //     width: 100,
        //     height: 100,
        //     color: Colors.red,
        //     child: Text('Enes'),
        //   ),
        // ),
        width: 300,
        height: 220,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.purple, width: 4),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30), topRight: Radius.circular(30)),
          image: DecorationImage(
              image: NetworkImage(_img1),
              fit: BoxFit.cover,
              repeat: ImageRepeat.repeatX),
          boxShadow: const [
            BoxShadow(
                color: Colors.yellow, offset: Offset(-10, -20), blurRadius: 10),
            BoxShadow(
                color: Colors.green, offset: Offset(10, 20), blurRadius: 10),
          ],
          shape: BoxShape.rectangle,
        ),
        padding: const EdgeInsets.all(16),
        // child: const FlutterLogo(
        //   size: 100,
        // ),
      ),
    );
  }
}
