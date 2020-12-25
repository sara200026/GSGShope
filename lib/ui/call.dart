import 'package:flutter/material.dart';
import 'package:gsgtrining/customWid/custom_textField.dart';
import 'package:gsgtrining/util/color.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:string_validator/string_validator.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  GlobalKey<FormState> formKey = GlobalKey();

  String email;

  String ti;

  int phone;

  String cont;

  saveForm() {
    bool validateResult = formKey.currentState.validate();
    if (validateResult) {
      formKey.currentState.save();
    } else {
      return;
    }
  }

  String validateNull(String value) {
    if (value == null || value == '') {
      return 'required field';
    }
  }

  String validateEmail(String value) {
    if (value == null || value == '') {
      return 'required field';
    } else if (!isEmail(value)) {
      return 'Incorrect Email Syntax';
    }
  }

  savePhont(int value) {
    this.phone = value;
  }

  saveTi(String value) {
    this.ti = value;
  }

  saveEmail(String value) {
    this.email = value;
  }

  saveCon(String value) {
    this.cont = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBin,
        centerTitle: true,
        title: Text(
          translator.translate("text41"),
          style: TextStyle(fontSize: 25, color: colorWhite),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Form(
              key: formKey,
              child: Column(children: [
                CustomTextField(
                  hintt: translator.translate("text41"),
                  saveFunction: saveEmail,
                  validateFun: validateEmail,
                ),
                CustomTextField(
                  hintt: translator.translate("text16"),
                  saveFunction: savePhont,
                  validateFun: validateNull,
                ),
                CustomTextField(
                  hintt: translator.translate("text49"),
                  saveFunction: saveTi,
                  validateFun: validateNull,
                ),
                Container(
                    margin: EdgeInsets.only(right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(translator.translate("text50")),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    textAlign: TextAlign.end,
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: colorBlack, width: 1),
                      ),
                    ),
                  ),
                ),
              ]))
        ],
      ),
    );
  }
}
