import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldKullanimi extends StatefulWidget {
  const TextFormFieldKullanimi({super.key});

  @override
  State<TextFormFieldKullanimi> createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
  String _email = "", _password = "", _username = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Form Field Kullanimi'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                TextFormField(
                  onSaved: (newValue) {
                    _username = newValue!;
                  },
                  validator: (value) {
                    if (value!.length < 4) {
                      return "Username should be at least 4 characters";
                    } else {
                      return null;
                    }
                  },
                  // initialValue: 'Enes Baysal',
                  decoration: const InputDecoration(
                    errorStyle: TextStyle(color: Colors.orange),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: "Username",
                    hintText: "Username",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onSaved: (newValue) {
                    _email = newValue!;
                  },
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email can not be empty";
                    } else if (!EmailValidator.validate(value)) {
                      return "Email form not appropriate ";
                    } else {
                      return null;
                    }
                  },
                  // initialValue: 'enesbaysl@outlook.com',
                  decoration: const InputDecoration(
                    errorStyle: TextStyle(color: Colors.orange),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: "Email",
                    hintText: "Email",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onSaved: (newValue) {
                    _password = newValue!;
                  },
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.length < 6) {
                      return "Password should be 6 or more characters";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    errorStyle: TextStyle(color: Colors.orange),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: "Password",
                    hintText: "Password",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      bool _validate = _formKey.currentState!.validate();
                      if (_validate) {
                        _formKey.currentState!.save();
                        String result =
                            "username: $_username\nemail: $_email\nsifre: $_password";

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.orange.shade300,
                            content: Text(
                              result,
                              style: TextStyle(fontSize: 24),
                            )));
                        _formKey.currentState!.reset();
                      }
                    },
                    child: Text("Onayla")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
