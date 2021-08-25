import 'package:flutter/material.dart';

import 'function_button_data.dart';
import 'function_button_item.dart';

class FunctionButton extends StatefulWidget {
  const FunctionButton({Key key}) : super(key: key);

  @override
  _FunctionButtonState createState() => _FunctionButtonState();
}

class _FunctionButtonState extends State<FunctionButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        alignment: WrapAlignment.start,
        spacing: 1,
        runSpacing: 1,
        children: functionButtonItemList.map((e) => FunctionButtonWidget(e)).toList(),
      )
    );
  }
}
