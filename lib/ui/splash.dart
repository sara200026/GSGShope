import 'package:flutter/material.dart';
import 'package:gsgtrining/ui/reg.dart';
import 'package:gsgtrining/util/color.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import 'home.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 280),
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/i5.jpg'),
                    fit: BoxFit.fill)),
          ),
          Container(
            margin: EdgeInsets.only(top: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 40,
                  child: RaisedButton(
                      color: colorWhite,
                      child: Text(
                        translator.translate("text1"),
                        style: TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return TyReges();
                        }));
                      }),
                ),
                Container(
                  width: 100,
                  height: 40,
                  child: RaisedButton(
                      color: colorWhite,
                      child: Text(
                        translator.translate("text2"),
                        style: TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Home();
                        }));
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
