import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Catagory extends StatelessWidget {
  Catagory({
    super.key,
    required this.text,
    required this.colors,
    required this.ontap,
  });

  // ignore: prefer_typing_uninitialized_variables
  var ontap;

  var colors;

  String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: colors,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(8),
        alignment: Alignment.center,
        width: 180,
        height: 358,

        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
        ),
      ),
    );
  }
}
