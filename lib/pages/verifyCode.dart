import 'package:firstapp/components/button.dart';
import 'package:firstapp/components/input.dart';
import 'package:firstapp/components/label.dart';
import 'package:firstapp/pages/home.dart';
import 'package:firstapp/utils/toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class VerifyCodePage extends StatefulWidget {
  const VerifyCodePage({super.key});

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {

  TextEditingController codeInputController = TextEditingController();

  void handleSubmitButton() {
    switch (codeInputController.text) {
      case "1234": Navigator.push(context, CupertinoPageRoute(builder: (context) => const HomePage()));
      default: showErrorToast(context, "Неверный код подтверждения");
    }
    codeInputController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.all(36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SplitPageHeader(text: "Подтвердите вход"),
          const SizedBox(height: 14),
          const SplitPageHeaderDescription(text: "Введите 4-х значный код подтверждения, отправленный вам по СМС"),
          const SizedBox(height: 36,),
          SplitTextField(controller: codeInputController, maxLength: 4, keyboardType: TextInputType.number,),
          const SizedBox(height: 36,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              SplitButton(text: "Назад", type: ButtonType.secondary, onPressed: () {
                Navigator.pop(context);
              },),
              SplitButton(text: "Подтвердить", onPressed: handleSubmitButton,),
            ],)
          )
        ],
      ),),
    );
  }
}