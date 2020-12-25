import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsgtrining/ui/store.dart';
import 'package:gsgtrining/util/color.dart';

class CustomCon extends StatelessWidget {
  String text;
  String image;
  CustomCon(this.text, this.image);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Store();
        }));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 100,
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
              width: 10, color: colorWhite, style: BorderStyle.solid),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                margin: EdgeInsets.only(right: 120),
                child: Text(
                  this.text,
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              height: 120,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage(this.image), fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }
}
