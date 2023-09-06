import 'package:firstapp/components/label.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplitCard extends StatefulWidget {
  const SplitCard({super.key});

  @override
  State<SplitCard> createState() => _SplitCardState();
}

class _SplitCardState extends State<SplitCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        backgroundBlendMode: BlendMode.srcIn,
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
          Image.asset(
            "assets/icons/ui/emoji_money.png",
            width: 18,
          ),
          SizedBox(width: 8,),
          Text("Баланс", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "12 000.00",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Text("TJS", style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w500),)
            ],
          ),
        ],
      ),
    );
  }
}
