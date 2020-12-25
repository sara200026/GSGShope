import 'package:flutter/material.dart';
import 'package:gsgtrining/customWid/cuRow.dart';
import 'package:gsgtrining/util/color.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import 'detpro.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBin,
        centerTitle: true,
        title: Text(
          translator.translate("text31"),
          style: TextStyle(fontSize: 25, color: colorWhite),
        ),
      ),
      body: ListView(
        children: [
          CustomRow(),
          CustomRow(),
          CustomRow(),
        ],
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
