import 'package:flutter/material.dart';

class CommonFloatActionButton extends StatelessWidget {

  final String title;
  final Function onTapFunction;

  const CommonFloatActionButton(this.title, this.onTapFunction, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(onTapFunction != null)
          onTapFunction();
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(15),
        height: 45,
        child: Center(child: Text(title, style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),),
      ),
    );
  }
}