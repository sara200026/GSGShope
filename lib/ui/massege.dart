import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsgtrining/util/color.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Massage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBin,
        centerTitle: true,
        title: Text(
          translator.translate("text38"),
          style: TextStyle(fontSize: 25, color: colorWhite),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: colorBin,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  width: 200,
                  height: 50,
                  child: Container(
                    margin: EdgeInsets.only(right: 10, top: 10),
                    child: Text(
                      ' بارك الله فيك معتصم',
                      style: TextStyle(color: colorWhite, fontSize: 12),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  margin: EdgeInsets.only(right: 20),
                ),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/i10.jpg'),
                          fit: BoxFit.fill)),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/i10.jpg'),
                          fit: BoxFit.fill)),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: colorWhite2,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  width: 200,
                  height: 50,
                  child: Container(
                    margin: EdgeInsets.only(right: 10, top: 10),
                    child: Text(
                      'هل انتهيت من برمجة الموقع ؟',
                      style: TextStyle(color: colorBlack, fontSize: 12),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  margin: EdgeInsets.only(right: 100),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 510),
            color: colorWhite,
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 150),
                    child: Icon(Icons.face_outlined)),
                Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text(translator.translate("text47"))),
                Container(
                  width: 60,
                  height: 100,
                  color: colorBin,
                  child: Icon(
                    Icons.send,
                    size: 30,
                    color: colorWhite,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
