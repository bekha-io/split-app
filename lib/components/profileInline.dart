import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplitProfileInline extends StatelessWidget {
  const SplitProfileInline(
      {super.key, required this.fullName, required this.avatarUrl});

  final String fullName;
  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(avatarUrl),
              backgroundColor: Colors.black,
            ),
            const SizedBox(width: 12),
            Text(
              fullName,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ]),
    );
  }
}
