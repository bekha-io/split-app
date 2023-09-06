// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary;
}


class SplitButton extends StatefulWidget {
  const SplitButton({super.key, required this.text, this.onPressed, this.type = ButtonType.primary});

  final String text;
  final VoidCallback? onPressed;
  final ButtonType type; 

  @override
  State<SplitButton> createState() => _SplitButtonState();
}

class _SplitButtonState extends State<SplitButton> {

  final primaryBackgroundColor = Colors.black;
  final secondaryBackgroundColor = Colors.transparent;

  final TextStyle primaryTextStyle = const TextStyle(color: Colors.white, fontSize: 16);
  final TextStyle secondaryTextStyle = const TextStyle(color: Colors.black, fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: widget.onPressed,
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14)))),
      minimumSize: MaterialStatePropertyAll(Size(48, 24)),
      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 18, horizontal: 24)),
      backgroundColor: MaterialStatePropertyAll(widget.type == ButtonType.primary ? primaryBackgroundColor : secondaryBackgroundColor),
    ),
    child: Text(widget.text, style: widget.type == ButtonType.primary ? primaryTextStyle : secondaryTextStyle));
  }



}