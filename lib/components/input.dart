import 'package:flutter/material.dart';

class SplitTextField extends StatelessWidget {
  const SplitTextField({super.key, this.label, this.hint, this.keyboardType = TextInputType.text,
  this.obscureText = false, this.maxLength, this.controller});

  final String? label;
  final String? hint;
  final TextInputType keyboardType;
  final bool obscureText;
  final int? maxLength;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLength: maxLength,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          labelStyle: Theme.of(context).textTheme.labelLarge,
          label: Text(
            label ?? "",
            style: const TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w300),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          hintStyle:
              const TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
          contentPadding: const EdgeInsets.all(18),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)))),
      style: const TextStyle(
          fontWeight: FontWeight.w400, color: Colors.black, fontSize: 18),
    );
  }
}
