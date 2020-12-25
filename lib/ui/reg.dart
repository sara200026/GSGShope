import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsgtrining/ui/reSto.dart';
import 'package:gsgtrining/ui/rgc.dart';
import 'package:gsgtrining/util/color.dart';
import 'package:gsgtrining/util/custom_router.gr.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class TyReges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBin,
        centerTitle: true,
        title: Text(
          translator.translate("text6"),
          style: TextStyle(fontSize: 25, color: colorWhite),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(translator.translate("text7")),
                  Text(
                    translator.translate("text8"),
                    style: TextStyle(color: colorGray),
                  )
                ],
              ),
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    ExtendedNavigator.root.push(Routes.registerStore);
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.all(Radius.circular(150)),
                      border: Border.all(
                          width: 10,
                          color: colorWhite,
                          style: BorderStyle.solid),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.store_outlined,
                          color: colorBin,
                          size: 50,
                        ),
                        Text(translator.translate("text4"))
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ExtendedNavigator.root.push(Routes.regClinet);
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 100),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.all(Radius.circular(150)),
                      border: Border.all(
                          width: 10,
                          color: colorWhite,
                          style: BorderStyle.solid),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.group_outlined,
                          color: colorBin,
                          size: 50,
                        ),
                        Text(translator.translate("text5"))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
