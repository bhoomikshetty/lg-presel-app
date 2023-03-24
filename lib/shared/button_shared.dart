import 'package:flutter/material.dart';
import 'package:lg_presel_app/constants/colors_constants.dart';

class ButtonShared extends StatefulWidget {
  Widget child;
  Function onPressed;
  int index;
  bool pressed;
  ButtonShared({
    super.key,
    required this.child,
    required this.onPressed,
    required this.index,
    required this.pressed,
  });

  @override
  State<ButtonShared> createState() => _ButtonSharedState();
}

class _ButtonSharedState extends State<ButtonShared> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(listOfColor[widget.index]),
          foregroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(255, 92, 89, 89)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          elevation:
              MaterialStateProperty.all<double>(widget.pressed ? 5.0 : 0.0),
          shadowColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        onPressed: () => widget.onPressed(widget.index),
        child: widget.child);
  }
}
