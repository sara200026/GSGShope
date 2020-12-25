import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:gsgtrining/ui/about.dart';
import 'package:gsgtrining/ui/box.dart';
import 'package:gsgtrining/ui/call.dart';
import 'package:gsgtrining/ui/cond.dart';
import 'package:gsgtrining/ui/edit.dart';
import 'package:gsgtrining/ui/product.dart';
import 'package:gsgtrining/util/color.dart';
import 'package:gsgtrining/util/custom_router.gr.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import 'cusListTi.dart';

class CusDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: colorBin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "متجر أرائك",
                      style: TextStyle(color: colorWhite, fontSize: 15),
                    ),
                    Text(
                      "متجر",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/i1.jpg"),
                  radius: 40,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                CustomList(
                  title: translator.translate("text37"),
                  text: "EN " "AR",
                  icon: Icon(Icons.language),
                  onClick: () {
                    translator.setNewLanguage(
                      context,
                      newLanguage:
                          translator.currentLanguage == 'ar' ? 'en' : 'ar',
                      remember: true,
                      restart: true,
                    );
                  },
                  isLeading: true,
                ),
                Divider(
                  height: 1,
                  color: colorBlack,
                ),
                CustomList(
                  title: translator.translate("text38"),
                  icon: Icon(Icons.message_outlined),
                  onClick: () {
                    ExtendedNavigator.root.push(Routes.box);
                  },
                ),
                Divider(
                  height: 1,
                  color: colorBlack,
                ),
                CustomList(
                  title: translator.translate("text39"),
                  icon: Icon(Icons.edit),
                  onClick: () {
                    ExtendedNavigator.root.push(Routes.edit);
                  },
                ),
                Divider(
                  height: 1,
                  color: colorBlack,
                ),
                CustomList(
                  text: "20",
                  title: translator.translate("text31"),
                  icon: Icon(Icons.store),
                  onClick: () {
                    ExtendedNavigator.root.push(Routes.product);
                  },
                  isLeading: true,
                ),
                Divider(
                  height: 1,
                  color: colorBlack,
                ),
                CustomList(
                  icon: Icon(Icons.phone),
                  title: translator.translate("text41"),
                  onClick: () {
                    ExtendedNavigator.root.push(Routes.call);
                  },
                ),
                Divider(
                  height: 1,
                  color: colorBlack,
                ),
                SizedBox(height: 50),
                Container(
                  margin: EdgeInsets.only(top: 180),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            translator.translate("text42"),
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(width: 10),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.logout,
                              color: colorBlack,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                ExtendedNavigator.root.push(Routes.conditions);
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  translator.translate("text44"),
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                ExtendedNavigator.root.push(Routes.aboutApp);
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Text(
                                  translator.translate("text43"),
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
