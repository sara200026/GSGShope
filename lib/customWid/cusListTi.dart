import 'package:flutter/material.dart';
import 'package:gsgtrining/util/color.dart';

class CustomList extends StatelessWidget {
  final String title;
  final String text;
  final Widget icon;
  final bool isLeading;
  final Function onClick;

  const CustomList({
    @required this.title,
    @required this.onClick,
    @required this.icon,
    this.text,
    this.isLeading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListTile(
        title: Text(
          "$title",
          textAlign: TextAlign.end,
          style: TextStyle(fontSize: 15),
        ),
        trailing: icon,
        onTap: onClick,
        leading: isLeading
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "$text",
                    style: TextStyle(color: colorBlack),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              )
            : null,
      ),
    );
  }
}
