import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsgtrining/util/custom_router.gr.dart';

class Cusbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.root.push(Routes.massage);
      },
      child: Container(
        margin: EdgeInsets.only(top: 30, bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                margin: EdgeInsets.only(right: 150),
                child: Text(
                  '1:02',
                  style: TextStyle(fontSize: 13),
                )),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'هشام محمد',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'السلام عليكم أخ معتصم',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
              margin: EdgeInsets.only(right: 20),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/i1.jpg'),
                      fit: BoxFit.fill)),
            ),
          ],
        ),
      ),
    );
  }
}
