import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gsgtrining/util/color.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBin,
        centerTitle: true,
        title: Text(
          translator.translate("text34"),
          style: TextStyle(fontSize: 25, color: colorWhite),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            child: Image(
                image: AssetImage('assets/images/i1.jpg'),
                fit: BoxFit.fitWidth),
          ),
          Container(
            height: 600,
            decoration: new BoxDecoration(color: colorBinop),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 350),
                  height: 30,
                  color: colorBin,
                  child: Text(
                    translator.translate("text33"),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: colorWhite),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    translator.translate("text32"),
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50, right: 20),
                  child: Text(
                    translator.translate("text35"),
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Text(translator.translate("text36")),
                        margin: EdgeInsets.only(right: 20),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/images/i1.jpg'),
                                fit: BoxFit.fill)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 210),
                  color: colorWhite,
                  height: 65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.mail,
                        color: colorOrange,
                      ),
                      Icon(
                        Icons.phone,
                        color: colorBlue,
                      ),
                      Icon(
                        Icons.warning,
                        color: colorRed,
                      ),
                      Icon(
                        Icons.share,
                        color: colorGreen,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
