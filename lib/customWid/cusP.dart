import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsgtrining/ui/product.dart';
import 'package:gsgtrining/util/color.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class CustomP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Product();
        }));
      },
      child: Container(
          margin: EdgeInsets.only(top: 30),
          child: ListTile(
            trailing: Container(
              width: 100,
              decoration: BoxDecoration(
                color: colorWhite,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage("assets/images/i1.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            title: Text(
              translator.translate("text26"),
              textAlign: TextAlign.end,
              style: TextStyle(color: colorBlack),
            ),
            subtitle: Text(
              translator.translate("text27"),
              textAlign: TextAlign.end,
              style: TextStyle(color: colorBlack),
            ),
            leading: Icon(
              Icons.arrow_back_ios,
              color: colorBlack,
            ),
          )),
    );
  }
}
