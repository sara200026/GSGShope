import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gsgtrining/customWid/cubox.dart';
import 'package:gsgtrining/util/color.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Box extends StatelessWidget {
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
          Cusbox(),
          Divider(),
          Cusbox(),
          Divider(),
          Cusbox(),
          Divider(),
          Cusbox(),
        ],
      ),
    );
  }
}
