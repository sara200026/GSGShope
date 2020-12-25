import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsgtrining/util/color.dart';
import 'package:gsgtrining/util/custom_router.gr.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class CustomRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.root.push(Routes.productDetails);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/i1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(translator.translate("text29"),
                              style:
                                  (TextStyle(color: colorBlack, fontSize: 11))),
                          Text(translator.translate("text30"),
                              style:
                                  (TextStyle(color: colorBin, fontSize: 11))),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/i1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(translator.translate("text29"),
                              style:
                                  (TextStyle(color: colorBlack, fontSize: 11))),
                          Text(translator.translate("text30"),
                              style: TextStyle(color: colorBin, fontSize: 11)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
