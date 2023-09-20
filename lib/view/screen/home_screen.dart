import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_form_to_appscript/static/style/custom_text_style.dart';
import 'package:flutter_form_to_appscript/view/widget/custom_text_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController namaTextController = TextEditingController();
    TextEditingController nomorWATextController = TextEditingController();
    TextEditingController emailTextController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Masukkan data",
                style: CustomTextStyle.header,
              ),
              CustomTextForm(label: "Nama", controller: namaTextController),
              CustomTextForm(
                  label: "Nomor WA", controller: nomorWATextController),
              CustomTextForm(label: "Email", controller: emailTextController),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
