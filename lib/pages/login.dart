import 'package:firstapp/components/button.dart';
import 'package:firstapp/components/input.dart';
import 'package:firstapp/components/label.dart';
import 'package:firstapp/pages/verifyCode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:m_toast/m_toast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SplitPageHeader(text: "Войдите"),
                const SizedBox(height: 14),
                const SplitPageHeaderDescription(text: "Введите номер телефона и пароль для входа в приложение"),
                const SizedBox(height: 24,),
                const SplitTextField(
                  label: "Номер телефона",
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 24,),
                const SplitTextField(
                  label: "Пароль",
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                const SizedBox(height: 48,),
                Row(
                  children: [Expanded(child: SplitButton(text: "Войти", onPressed: handleLoginButton),)],)
              ],
            ),
          )),
    );
  }

  void handleLoginButton() {
    Navigator.push(context, CupertinoPageRoute(builder: (context) => const VerifyCodePage()));
  }
}
