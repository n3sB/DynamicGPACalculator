import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TextEditingController _emailController;
  late FocusNode _focusNode;
  int maxLineCount = 1;
  @override
  void initState() {
    //statefulwidget çalıştığında bir kere çalışır ve genelde atamalar burada yapılır
    super.initState();
    _emailController = TextEditingController(text: 'enesbaysl@outlook.com');
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          maxLineCount = 3;
        } else {
          maxLineCount = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    //başka sayfaya gittiğinizde yok eder
    _emailController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                focusNode: _focusNode,
                controller: _emailController,
                // girdi alınacak yer
                keyboardType:
                    TextInputType.number, // nasıl bir keyboard çıkacağı
                textInputAction: TextInputAction
                    .done, // bu gönder veya onayla gibi keyboardda çıkan tuş
                // autofocus: true,
                maxLines: maxLineCount,
                maxLength: 50,
                onChanged: (String value) {
                  if (value.length > 3) {
                    setState(() {
                      _emailController.value = TextEditingValue(
                          text: value,
                          selection:
                              TextSelection.collapsed(offset: value.length));
                    });
                  }
                },

                cursorColor: Colors.pink,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 219, 209, 178),
                  labelText: 'Email',
                  hintText: 'Email giriniz',
                  prefixIcon: Icon(Icons.email),
                ),

                onSubmitted: (value) {
                  print('submitted value : $value');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_emailController.text),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 219, 209, 178),
                  labelText: 'Password',
                  hintText: 'Password giriniz',
                  prefixIcon: Icon(Icons.password_sharp),
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _emailController.text = "enesbysll261@hotmail.com";
            });
          },
          child: Icon(Icons.edit),
        ),
      ),
    );
  }
}
