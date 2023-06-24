import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _img_url =
        'https://www.arabahabercisi.com/wp-content/uploads/2022/07/Elektrikli-Araba-Modelleri-2022-600x381.jpg';
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            // yüksekliği maksimum içindeki elemanın height değeri kadar olur
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                      color: Colors.red.shade300,
                      child: Image.asset(
                        'assets/images/car.jpg',
                        fit: BoxFit.cover,
                      )),
                ),
                Expanded(
                  child: Container(
                      color: Colors.red.shade300,
                      child: Image.network(
                        _img_url,
                        fit: BoxFit.fitHeight,
                      )),
                ),
                Expanded(
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.red,
                      backgroundImage: NetworkImage(_img_url),
                      radius: 85,
                      // child: const Text(
                      //   'EB',
                      //   style: TextStyle(fontSize: 50),
                      // ),
                    ),
                  )),
                )
              ],
            ),
          ),
          Container(
            height: 200,
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading.gif',
              image: _img_url,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              height: 100,
              child: Placeholder(
                color: Colors.red,
              )),
        ],
      ),
    );
  }
}
