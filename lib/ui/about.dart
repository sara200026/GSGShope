import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsgtrining/util/color.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBin,
        centerTitle: true,
        title: Text(
          translator.translate("text43"),
          style: TextStyle(fontSize: 25, color: colorWhite),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/i5.jpg'),
                    fit: BoxFit.fill)),
          ),
          Container(
            height: 600,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20, top: 30),
                  child: Text(
                    translator.translate("text43"),
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 20, color: colorBin),
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
                Container(
                  margin: EdgeInsets.only(right: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: colorBin,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.share,
                            color: colorWhite,
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                            color: colorBin,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.phone,
                            color: colorWhite,
                          ))
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
