import 'package:flutter/material.dart';

class StepperOrnek extends StatefulWidget {
  const StepperOrnek({super.key});

  @override
  State<StepperOrnek> createState() => _StepperOrnekState();
}

class _StepperOrnekState extends State<StepperOrnek> {
  int _aktifStep = 0;
  String? isim, mail, sifre;
  List<Step>? tumStepler;
  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();
  bool hata = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    tumStepler = _tumStepler();
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper Örnek"),
      ),
      body: SingleChildScrollView(
        child: Stepper(
          steps: tumStepler!,
          // type: StepperType.horizontal,
          currentStep: _aktifStep,
          // onStepTapped: (tiklanianStep) {
          //   setState(
          //     () {
          //       _aktifStep = tiklanianStep;
          //     },
          //   );
          // },
          onStepContinue: () {
            setState(() {
              _ileriButonuKontrolu();
            });
          },
          onStepCancel: () {
            setState(() {
              if (_aktifStep > 0) {
                _aktifStep--;
              }
            });
          },
        ),
      ),
    );
  }

  List<Step> _tumStepler() {
    List<Step> stepList = [
      Step(
        title: Text("Kullanıcı Adınızı Giriniz: "),
        content: Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextFormField(
            onSaved: (newValue) {
              isim = newValue;
            },
            key: key0,
            validator: (value) {
              if (value!.length < 6) {
                return "En az 6 karakter giriniz";
              }
            },
            decoration: const InputDecoration(
              labelText: "Username",
              hintText: "UsernameHint",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        subtitle: Text("Username AltBaşlık"),
        state: _stateleriAyarla(0),
        isActive: true,
      ),
      Step(
        title: Text("Mail Giriniz: "),
        content: Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextFormField(
            onSaved: (newValue) {
              mail = newValue;
            },
            key: key1,
            validator: (value) {
              if (value!.length < 6 || !value.contains("@")) {
                return "Geçerli bir mail giriniz";
              }
            },
            decoration: const InputDecoration(
              labelText: "Mail",
              hintText: "MailHint",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        subtitle: Text("Mail AltBaşlık"),
        state: _stateleriAyarla(1),
        isActive: true,
      ),
      Step(
        title: Text("Parola Giriniz: "),
        content: Padding(
          padding: const EdgeInsets.all(4.0),
          child: TextFormField(
            onSaved: (newValue) {
              sifre = newValue;
            },
            key: key2,
            validator: (value) {
              if (value!.length < 6) {
                return "En az 6 karakterli olmalı";
              }
            },
            decoration: const InputDecoration(
              labelText: "Parola",
              hintText: "ParolaHint",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        subtitle: Text("Parola AltBaşlık"),
        state: _stateleriAyarla(2),
        isActive: true,
      ),
    ];

    return stepList;
  }

  StepState _stateleriAyarla(int oAnkiStep) {
    setState(() {});
    if (_aktifStep == oAnkiStep) {
      if (hata) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _ileriButonuKontrolu() {
    switch (_aktifStep) {
      case 0:
        if (key0.currentState!.validate()) {
          key0.currentState!.save();
          hata = false;
          _aktifStep = 1;
        } else {
          hata = true;
        }
        break;
      case 1:
        if (key1.currentState!.validate()) {
          key1.currentState!.save();
          hata = false;
          _aktifStep = 2;
        } else {
          hata = true;
        }
        break;
      case 2:
        if (key2.currentState!.validate()) {
          key2.currentState!.save();
          hata = false;
          _aktifStep = 2;
          formTamamlandi();
        } else {
          hata = true;
        }
        break;
      default:
    }
  }

  void formTamamlandi() {
    debugPrint("Girilşen değerler : isim=>$isim mail=>$mail şifre=>$sifre");
  }
}
