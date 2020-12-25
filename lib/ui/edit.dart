import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsgtrining/customWid/custom_textField.dart';
import 'package:gsgtrining/util/color.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:string_validator/string_validator.dart';

class Edit extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey();

  String email;

  String password;
  String comName;
  String userNa;
  int phone;
  String logo;
  String tra;
  String na;
  saveNa(String value) {
    this.na = value;
  }

  saveCom(String value) {
    this.comName = value;
  }

  saveuser(String value) {
    this.userNa = value;
  }

  savePhine(int value) {
    this.phone = value;
  }

  savelogo(String value) {
    this.logo = value;
  }

  savetra(String value) {
    this.tra = value;
  }

  saveForm() {
    bool validateResult = formKey.currentState.validate();
    if (validateResult) {
      formKey.currentState.save();
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
            translator.translate("text51"),
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
                      Text(translator.translate("text51")),
                      Icon(Icons.store_outlined)
                    ],
                  ),
                ],
              ),
            ),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    CustomTextField(
                      hintt: 'شركة الامانة',
                      saveFunction: saveCom,
                      validateFun: validateNull,
                    ),
                    CustomTextField(
                      hintt: 'معتصم محمد',
                      saveFunction: saveuser,
                      validateFun: validateNull,
                    ),
                    CustomTextField(
                      hintt: '*******',
                      saveFunction: savePassword,
                      validateFun: validatePassword,
                    ),
                    CustomTextField(
                      hintt: 'example@gmail.com',
                      saveFunction: saveEmail,
                      validateFun: validateEmail,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Text('الاحمدي , الكويت')),
                          Icon(
                            Icons.location_on,
                            color: colorBin,
                          ),
                        ],
                      ),
                    ),
                    CustomTextField(
                      hintt: '0394 22 34',
                      saveFunction: savePhine,
                      validateFun: validateNull,
                    ),
                    CustomTextField(
                      hintt: 'example.jpeg ',
                      saveFunction: savelogo,
                      validateFun: validateNull,
                    ),
                    CustomTextField(
                      hintt: 'مشتل نايف ',
                      saveFunction: saveNa,
                      validateFun: validateNull,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('نوعية الخدمات التي تقدمها الشركات'),
                        ],
                      ),
                    ),
                    CustomTextField(
                      hintt: 'نشاط تجاري',
                      saveFunction: savetra,
                      validateFun: validateNull,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 100,
                            height: 40,
                            child: RaisedButton(
                                color: colorGray,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  translator.translate("text52"),
                                  style: TextStyle(fontSize: 15),
                                ),
                                onPressed: () {
                                  saveForm();
                                }),
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            child: RaisedButton(
                                color: colorBin,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  translator.translate("text53"),
                                  style: TextStyle(fontSize: 15),
                                ),
                                onPressed: () {
                                  saveForm();
                                }),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ));
  }
}
