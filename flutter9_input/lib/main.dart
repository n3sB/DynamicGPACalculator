import 'package:flutter/material.dart';
import 'package:flutter9_input/global_key_kullanimi.dart';
import 'package:flutter9_input/stepper_kullanimi.dart';
import 'package:flutter9_input/text_Form_field_kullanimi.dart';

import 'date_time_picker.dart';
import 'diger_form_elemanları.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: StepperOrnek(),
     
    );
  }
}
