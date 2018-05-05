import 'package:flutter/material.dart';

class MyFloatingButton extends Material {
  MyFloatingButton({
    Color color,
    Icon icon,
    GestureTapCallback onTap,
    double width,
    double height
  }) : super(
      color: color,
      type: MaterialType.circle,
      elevation: 6.0,
      child: new GestureDetector(
        child: new Container(
            width: width,
            height: height,
            child: new InkWell(
              onTap: onTap,
              child: new Center(
                child: icon,
              ),
            )
        ),
      )
  );
}