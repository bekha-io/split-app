import 'package:flutter/material.dart';

class SplitPageHeader extends StatelessWidget {
  const SplitPageHeader({super.key, required this.text});

  final String text; 

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
    );
  }
}


class SplitPageHeaderDescription extends StatelessWidget {
  const SplitPageHeaderDescription({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.grey),);
  }
}