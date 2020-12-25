import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:gsgtrining/customWid/cuscon.dart';
import 'package:gsgtrining/util/color.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => new _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Widget _slider = Container(
      height: 200.0,
      child: Carousel(
        images: [
          Image.asset(
            'assets/images/i1.jpg',
            fit: BoxFit.fitWidth,
          ),
          Image.asset(
            'assets/images/i2.jpg',
            fit: BoxFit.fitWidth,
          ),
          Image.asset(
            'assets/images/i3.jpg',
            fit: BoxFit.fitWidth,
          ),
        ],
        autoplay: true,
        dotSize: 5.0,
        indicatorBgPadding: 1.0,
        dotBgColor: Colors.black.withOpacity(.0001),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBin,
        centerTitle: true,
        title: Text(
          translator.translate("text6"),
          style: TextStyle(fontSize: 25, color: colorWhite),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            color: colorBinop,
            margin: EdgeInsets.only(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _slider,
                Container(
                  margin: EdgeInsets.only(right: 20, top: 15),
                  child: Text(
                    translator.translate("text54"),
                  ),
                ),
                Column(children: [
                  CustomCon(
                    translator.translate("text20"),
                    'assets/images/i13.jpg',
                  ),
                  CustomCon(
                    translator.translate("text21"),
                    'assets/images/i11.jpg',
                  ),
                  CustomCon(
                    translator.translate("text22"),
                    'assets/images/i12.jpg',
                  ),
                  CustomCon(
                    translator.translate("text23"),
                    'assets/images/i9.jpg',
                  ),
                  CustomCon(
                    translator.translate("text24"),
                    'assets/images/i5.jpg',
                  ),
                ])
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorBin,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: colorWhite,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
