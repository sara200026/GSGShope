import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gsgtrining/customWid/custom_textField.dart';
import 'package:gsgtrining/util/color.dart';
import 'package:gsgtrining/util/custom_router.gr.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:string_validator/string_validator.dart';
import 'home.dart';

class RegClinet extends StatefulWidget {
  @override
  _RegClinetState createState() => _RegClinetState();
}

class _RegClinetState extends State<RegClinet> {
  GlobalKey<FormState> formKey = GlobalKey();

  String email;

  String password;

  String userNa;

  String phone;

  saveuser(String value) {
    this.userNa = value;
  }

  savePhine(String value) {
    this.phone = value;
  }

  saveForm() {
    bool validateResult = formKey.currentState.validate();
    if (validateResult) {
      formKey.currentState.save();
      ExtendedNavigator.root.push(Routes.home);
    } else {
      return;
    }
  }

  saveEmail(String value) {
    this.email = value;
  }

  savePassword(String value) {
    this.password = value;
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

  String validatePassword(String value) {
    if (value == null || value == '') {
      return 'required field';
    } else if (value.length < 6) {
      return 'password must be longer than 6 symbols';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorBin,
          centerTitle: true,
          title: Text(
            translator.translate("text45"),
            style: TextStyle(fontSize: 25, color: colorWhite),
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(translator.translate("text45")),
                      Icon(Icons.group_outlined)
                    ],
                  ),
                  Text(translator.translate("text27"))
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    CustomTextField(
                      hintt: translator.translate("text12"),
                      saveFunction: saveuser,
                      validateFun: validateNull,
                    ),
                    CustomTextField(
                      hintt: translator.translate("text13"),
                      saveFunction: savePassword,
                      validateFun: validatePassword,
                    ),
                    CustomTextField(
                      hintt: translator.translate("text14"),
                      saveFunction: saveEmail,
                      validateFun: validateEmail,
                    ),
                    CustomTextField(
                      hintt: translator.translate("text16"),
                      saveFunction: savePhine,
                      validateFun: validateNull,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 380,
                      height: 50,
                      child: RaisedButton(
                          color: colorBin,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            translator.translate("text1"),
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            saveForm();
                          }),
                    )
                  ],
                )),
          ],
        ));
  }
}
