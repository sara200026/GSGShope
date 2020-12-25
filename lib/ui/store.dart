import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsgtrining/customWid/cusP.dart';
import 'package:gsgtrining/customWid/dr.dart';

import 'package:gsgtrining/util/color.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBin,
        centerTitle: true,
        title: Text(
          translator.translate("text44"),
          style: TextStyle(fontSize: 25, color: colorWhite),
        ),
      ),
      body: ListView(
        children: [
          CustomP(),
          CustomP(),
          CustomP(),
          CustomP(),
          CustomP(),
          CustomP(),
          CustomP(),
        ],
      ),
      endDrawer: CusDrawer(),
    );
  }
}
