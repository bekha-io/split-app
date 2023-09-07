import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplitPaymentCard extends StatefulWidget {
  const SplitPaymentCard(
      {super.key,
      required this.pan,
      required this.expirationDate});

  final String pan;
  final String expirationDate;

  @override
  State<SplitPaymentCard> createState() => _SplitPaymentCardState();
}

class _SplitPaymentCardState extends State<SplitPaymentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 272,
      height: 160,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0x2D2829),
          backgroundBlendMode: BlendMode.srcIn,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          // ignore: prefer_const_constructors
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text("zypl.bank", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),),
            ],
          ), // Bank title
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(widget.pan, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),)
            ],
          ), // PAN
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(widget.expirationDate, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
              const Spacer(),
              Image.asset("assets/icons/ui/mastercard.png")
            ],
          ) // EXP and PaymentSystem
        ],
      ),
    );
  }
}
