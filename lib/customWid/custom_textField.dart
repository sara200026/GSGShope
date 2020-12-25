import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextField extends StatelessWidget {
  Function validateFun;
  Function saveFunction;
  String label;
  CustomTextField(
      {@required this.label,
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
          height: 50,
          child: TextFormField(
            textAlign: TextAlign.end,
            validator: (newValue) => validateFun(newValue),
            onSaved: (newValue) => saveFunction(newValue),
            decoration: InputDecoration(
                hintText: label,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
      ],
    );
  }
}
