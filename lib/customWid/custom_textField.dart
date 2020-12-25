import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextField extends StatelessWidget {
  Function validateFun;
  Function saveFunction;
  String hintt;
  CustomTextField(
      {@required this.hintt,
      @required this.saveFunction,
      @required this.validateFun});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          width: 380,
          // height: 70,
          child: TextFormField(
            textAlign: TextAlign.end,
            validator: (newValue) => validateFun(newValue),
            onSaved: (newValue) => saveFunction(newValue),
            decoration: InputDecoration(
                hintText: hintt,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
      ],
    );
  }
}
